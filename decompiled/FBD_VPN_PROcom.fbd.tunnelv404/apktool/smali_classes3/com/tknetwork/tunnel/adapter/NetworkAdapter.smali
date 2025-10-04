.class public Lcom/tknetwork/tunnel/adapter/NetworkAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final config:Lconfig/ConfigUtil;

.field private listNetwork:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    const v0, 0x7f0d0090

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->listNetwork:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {p1}, Lconfig/ConfigUtil;->getInstance(Landroid/content/Context;)Lconfig/ConfigUtil;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->listNetwork:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-object p2
.end method

.method public getIcon(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x3

    .line 1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f08011c

    return p1

    .line 2
    :cond_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f080144

    if-eqz v1, :cond_1

    return v3

    .line 3
    :cond_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_2

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const p1, 0x7f080098

    return p1

    .line 4
    :cond_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_3

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f080120

    return p1

    .line 5
    :cond_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_4

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p1, 0x7f0800dd

    return p1

    .line 6
    :cond_4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_5

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const p1, 0x7f0800de

    return p1

    .line 7
    :cond_5
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_6

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const p1, 0x7f0800df

    return p1

    .line 8
    :cond_6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_7

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const p1, 0x7f0801b5

    return p1

    .line 9
    :cond_7
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_8

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const p1, 0x7f080081

    return p1

    .line 10
    :cond_8
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_9

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const p1, 0x7f080165

    return p1

    .line 11
    :cond_9
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_a

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const p1, 0x7f0800a2

    return p1

    .line 12
    :cond_a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_b

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const p1, 0x7f080194

    return p1

    .line 13
    :cond_b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_c

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const p1, 0x7f080206

    return p1

    .line 14
    :cond_c
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_d

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const p1, 0x7f0800d0

    return p1

    .line 15
    :cond_d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_e

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const p1, 0x7f080193

    return p1

    .line 16
    :cond_e
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_f

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const p1, 0x7f08020e

    return p1

    .line 17
    :cond_f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_10

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const p1, 0x7f0800a5

    return p1

    .line 18
    :cond_10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_11

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const p1, 0x7f0801f9

    return p1

    .line 19
    :cond_11
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_12

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const p1, 0x7f0801b4

    return p1

    .line 20
    :cond_12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_13

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const p1, 0x7f08020d

    return p1

    .line 21
    :cond_13
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_14

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const p1, 0x7f080099

    return p1

    .line 22
    :cond_14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_15

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const p1, 0x7f0800d2

    return p1

    .line 23
    :cond_15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_16

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const p1, 0x7f080214

    return p1

    .line 24
    :cond_16
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_17

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const p1, 0x7f0800a8

    return p1

    .line 25
    :cond_17
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_18

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const p1, 0x7f0801ec

    return p1

    .line 26
    :cond_18
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_19

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const p1, 0x7f080205

    return p1

    .line 27
    :cond_19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_1a

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const p1, 0x7f080208

    return p1

    .line 28
    :cond_1a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1b

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const p1, 0x7f080171

    return p1

    .line 29
    :cond_1b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1c

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const p1, 0x7f080212

    return p1

    .line 30
    :cond_1c
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1d

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const p1, 0x7f0800ce

    return p1

    .line 31
    :cond_1d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1e

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const p1, 0x7f080175

    return p1

    .line 32
    :cond_1e
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1f

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v4, 0x7f08012f

    if-eqz v1, :cond_1f

    return v4

    .line 33
    :cond_1f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_20

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const p1, 0x7f08011a

    return p1

    .line 34
    :cond_20
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_21

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const p1, 0x7f080176

    return p1

    .line 35
    :cond_21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_22

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const p1, 0x7f08011d

    return p1

    .line 36
    :cond_22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_23

    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v5, 0x7f08017a

    if-eqz v1, :cond_23

    return v5

    .line 37
    :cond_23
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_24

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const p1, 0x7f080112

    return p1

    .line 38
    :cond_24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_25

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const p1, 0x7f08011e

    return p1

    .line 39
    :cond_25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_26

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const p1, 0x7f080185

    return p1

    .line 40
    :cond_26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_27

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const p1, 0x7f080126

    return p1

    .line 41
    :cond_27
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_28

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    const p1, 0x7f080121

    return p1

    .line 42
    :cond_28
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_29

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    const p1, 0x7f080166

    return p1

    .line 43
    :cond_29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_2a

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const p1, 0x7f080177

    return p1

    .line 44
    :cond_2a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_2b

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const p1, 0x7f080141

    return p1

    .line 45
    :cond_2b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_2c

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const p1, 0x7f080138

    return p1

    .line 46
    :cond_2c
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_2d

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const p1, 0x7f080109

    return p1

    .line 47
    :cond_2d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_2e

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const p1, 0x7f080110

    return p1

    .line 48
    :cond_2e
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_2f

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const p1, 0x7f080183

    return p1

    .line 49
    :cond_2f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_30

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    const p1, 0x7f080182

    return p1

    .line 50
    :cond_30
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_31

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    const p1, 0x7f080174

    return p1

    .line 51
    :cond_31
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_32

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    const p1, 0x7f08017b

    return p1

    .line 52
    :cond_32
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_33

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v6, 0x7f0800e5

    if-eqz v1, :cond_33

    return v6

    .line 53
    :cond_33
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_34

    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const p1, 0x7f080129

    return p1

    .line 54
    :cond_34
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_35

    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    const p1, 0x7f080106

    return p1

    .line 55
    :cond_35
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_36

    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    return v6

    .line 56
    :cond_36
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_37

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    const p1, 0x7f080150

    return p1

    .line 57
    :cond_37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_38

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    const p1, 0x7f08014c

    return p1

    .line 58
    :cond_38
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_39

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    const p1, 0x7f080164

    return p1

    .line 59
    :cond_39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_3a

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const p1, 0x7f080172

    return p1

    .line 60
    :cond_3a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_3b

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const p1, 0x7f08017f

    return p1

    .line 61
    :cond_3b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_3c

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 62
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_3d

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3c

    const p1, 0x7f080146

    return p1

    :cond_3c
    const p1, 0x7f080147

    return p1

    .line 63
    :cond_3d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v2, [J

    fill-array-data v6, :array_3e

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const p1, 0x7f08017e

    return p1

    .line 64
    :cond_3e
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_3f

    invoke-direct {v1, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v6, 0x7f08014e

    if-eqz v1, :cond_3f

    return v6

    .line 65
    :cond_3f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_40

    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    const p1, 0x7f08012a

    return p1

    .line 66
    :cond_40
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v2, [J

    fill-array-data v7, :array_41

    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    const p1, 0x7f080118

    return p1

    .line 67
    :cond_41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v0, [J

    fill-array-data v7, :array_42

    invoke-direct {v1, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const v7, 0x7f080180

    if-eqz v1, :cond_42

    return v7

    .line 68
    :cond_42
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_43

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 69
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_44

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_43

    const p1, 0x7f08013a

    return p1

    :cond_43
    const p1, 0x7f080139

    return p1

    .line 70
    :cond_44
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_45

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 71
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_46

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_45

    const p1, 0x7f080187

    return p1

    :cond_45
    const p1, 0x7f080186

    return p1

    .line 72
    :cond_46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_47

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    const p1, 0x7f0800eb

    return p1

    .line 73
    :cond_47
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_48

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    const p1, 0x7f080105

    return p1

    .line 74
    :cond_48
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_49

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    const p1, 0x7f080108

    return p1

    .line 75
    :cond_49
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_4a

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const p1, 0x7f080119

    return p1

    .line 76
    :cond_4a
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_4b

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const p1, 0x7f08011f

    return p1

    .line 77
    :cond_4b
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_4c

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const p1, 0x7f080123

    return p1

    .line 78
    :cond_4c
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v0, [J

    fill-array-data v8, :array_4d

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const p1, 0x7f08012d

    return p1

    .line 79
    :cond_4d
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v8, v2, [J

    fill-array-data v8, :array_4e

    invoke-direct {v1, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return v4

    .line 80
    :cond_4e
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_4f

    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    return v3

    .line 81
    :cond_4f
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_50

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    return v6

    .line 82
    :cond_50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_51

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    return v7

    .line 83
    :cond_51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_52

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    const p1, 0x7f080156

    return p1

    .line 84
    :cond_52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_53

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    const p1, 0x7f080163

    return p1

    .line 85
    :cond_53
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_54

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_55

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_54

    const p1, 0x7f08016e

    return p1

    :cond_54
    const p1, 0x7f08016d

    return p1

    .line 87
    :cond_55
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_56

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    return v5

    .line 88
    :cond_56
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v2, [J

    fill-array-data v1, :array_57

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_57

    const p1, 0x7f080207

    return p1

    :cond_57
    const p1, 0x7f080160

    return p1

    :array_0
    .array-data 8
        -0x74b907e26bd0c99fL
        0x40adf53f50363579L    # 3834.623658842113
    .end array-data

    :array_1
    .array-data 8
        0x2c9653ab3a7a01cdL    # 6.689727939485944E-94
        -0x1f62b5525ec30590L
    .end array-data

    :array_2
    .array-data 8
        0x75f6bb65484d5737L    # 1.747568426377055E260
        0x7e629c45c4391e4fL    # 6.231639426175171E300
    .end array-data

    :array_3
    .array-data 8
        0x58c5a9b2f9aa5f56L    # 4.370233423441321E119
        -0x7bfd0148699ee15L
    .end array-data

    :array_4
    .array-data 8
        0x690c4f6763a17c37L    # 1.058107192364947E198
        0x5644a9af02061aaeL    # 3.791213147536719E107
    .end array-data

    :array_5
    .array-data 8
        0x6efea5db31d8be72L    # 4.537714177986789E226
        -0x738d6f9f74e90321L
    .end array-data

    :array_6
    .array-data 8
        0x44e81f7f841933c4L    # 9.113426652160508E23
        -0x159e93f64404f62dL    # -2.7311507304553066E204
    .end array-data

    :array_7
    .array-data 8
        -0x447e7fcc85eb5a2eL    # -4.63241934374965E-22
        0x61d460a622d9d02aL    # 1.8335354694679766E163
    .end array-data

    :array_8
    .array-data 8
        -0x6936bfa40fb88162L    # -6.59778843992651E-199
        -0x28653b82576e2438L    # -1.0299754603088661E114
    .end array-data

    :array_9
    .array-data 8
        0x1b93f27836d9040dL    # 7.875956798744032E-176
        -0x69e7c75949c9c394L
    .end array-data

    :array_a
    .array-data 8
        -0x569082936e09ed50L    # -4.190090341846338E-109
        0x186b4834360533ceL    # 4.783763597319876E-191
    .end array-data

    :array_b
    .array-data 8
        -0x1e4d9ba5a8a7e5dbL    # -4.137201912126827E162
        0x656d3f1799732f2dL    # 3.792456736838028E180
    .end array-data

    :array_c
    .array-data 8
        0x404ee65876c253bcL    # 61.79957470406177
        0x31b80b9d01d6e9a3L    # 3.483953666408971E-69
        -0x4a35984e6dbfa4d3L    # -1.411489891119636E-49
    .end array-data

    :array_d
    .array-data 8
        -0x64f8e40bb310df73L
        -0x4ccaaa595fc32ae6L    # -5.186147595877278E-62
    .end array-data

    :array_e
    .array-data 8
        0x78c5cbfe556bdfc3L    # 5.895760090058545E273
        -0x21760932a26c81b4L    # -2.5937056450652662E147
    .end array-data

    :array_f
    .array-data 8
        -0x6c1a2f2656bac510L    # -8.100365973355819E-213
        -0x11c085d4455bf8deL    # -1.1378193433953761E223
    .end array-data

    :array_10
    .array-data 8
        -0xf7a2c0c9acaa07cL    # -1.084424332318768E234
        -0x75af9b1610d43783L    # -5.331308601693726E-259
    .end array-data

    :array_11
    .array-data 8
        0x567ba415f65661d4L
        0x53d11592119dee2eL    # 5.701837196270274E95
    .end array-data

    :array_12
    .array-data 8
        0x7598acdb72bba47L
        0x5889ec12a207b721L    # 3.2684322623714033E118
    .end array-data

    :array_13
    .array-data 8
        0x1fe5c5231fb75fffL
        0x2e8e6b3a57bcd0b9L    # 1.957285355668653E-84
    .end array-data

    :array_14
    .array-data 8
        -0x7056c80f070ae1d1L    # -3.172582882178618E-233
        -0x6ddf5961cb5e2fdbL
    .end array-data

    :array_15
    .array-data 8
        0xba8f6aa33bc891dL
        -0x33e7d50dc2b90920L    # -3.7925870143580476E58
    .end array-data

    :array_16
    .array-data 8
        -0x31251ac365c341b0L    # -7.425024599614745E71
        -0x1d0345c7b6a97b72L    # -6.7760130492345944E168
    .end array-data

    :array_17
    .array-data 8
        -0x41612d8a1e6dd0b2L    # -4.592852476746095E-7
        -0x242c4865d0830fb6L    # -2.2392534223111733E134
    .end array-data

    :array_18
    .array-data 8
        -0x37bef46f8ef9b0f1L    # -1.1600343457538677E40
        0x64e9b8173cbc20a4L    # 1.3027566508806451E178
    .end array-data

    :array_19
    .array-data 8
        0xf0440e36c2c0e06L
        -0x7bb286697c76410eL    # -6.049051446502332E-288
    .end array-data

    :array_1a
    .array-data 8
        -0x5bab161ad096499aL
        -0x1ac67d409b0b0398L    # -4.1350462317924664E179
        0x1d7268464a00d55bL    # 7.80392402642114E-167
    .end array-data

    :array_1b
    .array-data 8
        -0x4bd8cf762375fffbL    # -1.8471584958169822E-57
        0x687810b167336911L    # 1.7567372430672214E195
    .end array-data

    :array_1c
    .array-data 8
        -0x6393f5b4f771836cL
        0x6455aac34b07e275L    # 2.1435673217773465E175
    .end array-data

    :array_1d
    .array-data 8
        -0x4382291256f2e881L    # -2.588169601313527E-17
        -0x7a9e1d9ec44834a0L    # -9.621569766984681E-283
    .end array-data

    :array_1e
    .array-data 8
        0x1bd3eafd00c9041bL
        -0x4ad647a174ce825cL    # -1.3426567027116086E-52
    .end array-data

    :array_1f
    .array-data 8
        -0x736ca0dbf45d88b9L    # -4.329024616870254E-248
        -0x7cd1391af8a38041L
    .end array-data

    :array_20
    .array-data 8
        -0x70505ebea6b3fbebL
        0x35152197a054aa64L    # 5.515505740829708E-53
    .end array-data

    :array_21
    .array-data 8
        -0x5948ee90d2e1ccb9L    # -3.489583901200045E-122
        0x243ef89fdea3f8aeL
    .end array-data

    :array_22
    .array-data 8
        -0x37ffe9e4e2e645f6L    # -6.842377086107029E38
        0x497d61707e0cf36bL    # 1.0483356506685378E46
    .end array-data

    :array_23
    .array-data 8
        -0x295407feb2ef57ecL    # -3.2842923492875555E109
        0x77e9981098a1c26cL
    .end array-data

    :array_24
    .array-data 8
        0x36659e8e9eb51454L    # 1.1834055141928893E-46
        -0x3fa060eb5890fb72L    # -126.48563562242109
    .end array-data

    :array_25
    .array-data 8
        0x7d0783376dd329fL
        -0x4849173369771538L
    .end array-data

    :array_26
    .array-data 8
        -0x4e0845b7aac8ea20L    # -5.500675340945656E-68
        0x6c0097078f956eb1L    # 1.745308791423501E212
    .end array-data

    :array_27
    .array-data 8
        -0x3289a1540ced3e67L    # -1.4723850537540613E65
        0x3403d6aa5108412L
        -0x70addce084e7e3fcL    # -7.130395369125008E-235
    .end array-data

    :array_28
    .array-data 8
        -0xb1474e306e5d53eL
        -0x4ff2ccca6eeaf391L    # -3.1522054211265034E-77
    .end array-data

    :array_29
    .array-data 8
        -0x1120f8deb9a96abeL    # -1.1484933088263732E226
        -0x2ce2ebaff99c2f4bL    # -2.3694269656549973E92
    .end array-data

    :array_2a
    .array-data 8
        0x656e3269d7d86b4L
        -0x5b7b4d7f3c81557dL    # -9.112239768438026E-133
    .end array-data

    :array_2b
    .array-data 8
        -0x7df0d726dd72aa20L
        -0x29a18f70bfdbf8b6L    # -1.1170140371535695E108
    .end array-data

    :array_2c
    .array-data 8
        -0x5dce263eccb38beeL    # -5.718142882494412E-144
        -0x423c3a838dfb1cf1L    # -3.596402191016948E-11
        -0x3b574e6eea589006L    # -5.830616186806373E22
    .end array-data

    :array_2d
    .array-data 8
        0x330b8526c1b7fed0L    # 8.362214041911215E-63
        -0x5ec019c10eefa0faL
    .end array-data

    :array_2e
    .array-data 8
        0x57c2886ba2daa881L    # 5.704946414650236E114
        0xba07bf638ae5a6cL
    .end array-data

    :array_2f
    .array-data 8
        0xf8bc91864dbc657L    # 8.738804811216555E-234
        0x70dbd1e3ca2a90bbL    # 4.422745108561079E235
    .end array-data

    :array_30
    .array-data 8
        0x4e97b0d8cb05f610L    # 4.0876986890884355E70
        -0x1ee5cccb28f929c3L    # -5.7554518552806954E159
    .end array-data

    :array_31
    .array-data 8
        0x1ffe530cbf3abe65L
        -0x6d02c62927a62104L    # -3.311704256845091E-217
    .end array-data

    :array_32
    .array-data 8
        0x51663ca3f8a10c53L    # 1.3499652878801067E84
        -0x72abfb458f0d5201L
    .end array-data

    :array_33
    .array-data 8
        -0x3ae0fd14a909e773L    # -9.372621598024873E24
        0x6a21069e72cee054L    # 1.6681535608915758E203
    .end array-data

    :array_34
    .array-data 8
        -0x2a83fa6741ff384L    # -6.067703604051313E295
        0x8f1560f508ad094L
    .end array-data

    :array_35
    .array-data 8
        -0x8139e44b77a6407L
        0x7152ee2c82c0e2beL    # 7.704343154510297E237
    .end array-data

    :array_36
    .array-data 8
        0x7ffcb319a792c67bL
        -0x273220546dc540f8L    # -6.026670972195013E119
    .end array-data

    :array_37
    .array-data 8
        -0x26adc46b93efc0b8L    # -1.883258953462455E122
        -0x39085b24abbddab2L    # -7.672907497849789E33
    .end array-data

    :array_38
    .array-data 8
        -0x5603e058332fd5d2L
        -0x177140a7d8a2b7b8L    # -4.489067647588687E195
        -0x24d4c8b397588586L    # -1.5092201033532688E131
    .end array-data

    :array_39
    .array-data 8
        -0x29f11900d59e021fL    # -3.5437226709661625E106
        0x2a45b3815cfc42d2L    # 4.73102371304078E-105
    .end array-data

    :array_3a
    .array-data 8
        0x78100750cca5bcdcL
        -0x59fe447affd1f2a5L
    .end array-data

    :array_3b
    .array-data 8
        0x72a1737807e42588L    # 1.4894573453168073E244
        -0x409bef4b0976fcc5L    # -0.0024493727144378175
    .end array-data

    :array_3c
    .array-data 8
        0x34f51555009118d2L    # 1.3757513623133188E-53
        0x147007fd2f28fa01L    # 3.047679249099396E-210
    .end array-data

    :array_3d
    .array-data 8
        -0x111f4e16384ee54eL    # -1.2359260717508003E226
        -0x4b654236d79acaa3L    # -2.726491484932235E-55
    .end array-data

    :array_3e
    .array-data 8
        -0x65dcfef4f2220f72L    # -8.944980014718361E-183
        0x7a96f9ba06032623L    # 3.336420816764822E282
    .end array-data

    :array_3f
    .array-data 8
        -0x37dd476b5d73a03dL    # -3.1852161563041577E39
        0x1f35891b3e332a2aL
        -0x7713f659ce4c989aL
    .end array-data

    :array_40
    .array-data 8
        0x4a44ae3668ecf9d7L    # 6.044922104259719E49
        0x23cb2605a4438052L
    .end array-data

    :array_41
    .array-data 8
        0x7b5269c52307d3ddL    # 1.0952274672629116E286
        -0x7ade72364ddd5827L    # -5.902373666438876E-284
    .end array-data

    :array_42
    .array-data 8
        0x40af3ab9a271a256L    # 3997.362567473475
        -0x6013fd28fd5b77f1L
        0x39e11109b3e33dc9L    # 6.73156873754055E-30
    .end array-data

    :array_43
    .array-data 8
        -0x25a2886aa08b34a8L
        0xe7cf02fcf6d8a51L    # 6.94377129936801E-239
    .end array-data

    :array_44
    .array-data 8
        0xd990614a6fe28f4L
        0x50cd28ab67e9ef30L    # 1.7286993663284777E81
    .end array-data

    :array_45
    .array-data 8
        0x27ccefb2a175e332L
        0x5c59248d91e1d2bcL    # 7.309899963499053E136
    .end array-data

    :array_46
    .array-data 8
        0x624c4fa2280ccb12L    # 3.2606477987289805E165
        -0x4c1566997e2d7e1fL    # -1.3242188386553185E-58
    .end array-data

    :array_47
    .array-data 8
        -0x516433b2f4919127L    # -3.577301659506252E-84
        0x74502c39696772edL    # 1.8526794517890598E252
        0x2e857549ca815674L    # 1.3807137501484382E-84
    .end array-data

    :array_48
    .array-data 8
        0x470622a389c12d03L    # 1.4366636204720223E34
        0x358a51cd13bea94cL    # 8.793240701665347E-51
    .end array-data

    :array_49
    .array-data 8
        -0xd0e22e9a6996860L    # -4.878945940832502E245
        -0x179738d46a96e9d4L    # -9.04385549580723E194
    .end array-data

    :array_4a
    .array-data 8
        0x2368dc647e66a42dL    # 4.1753125660009006E-138
        -0x4460bef33c6826e1L    # -1.6545783309651757E-21
    .end array-data

    :array_4b
    .array-data 8
        -0x573760116911c4d8L
        -0x552e97054e463a48L
    .end array-data

    :array_4c
    .array-data 8
        0x78d66f1013a472dfL    # 1.2136114676240708E274
        -0x5979c0192a51518L    # -4.427396984335146E281
    .end array-data

    :array_4d
    .array-data 8
        0x40fbf2547cae7de3L    # 114469.2804398458
        -0x6343f293f0a46248L    # -2.90357435502061E-170
        0x565cf60af098d933L    # 1.0627560467923579E108
    .end array-data

    :array_4e
    .array-data 8
        0x364b35569a941712L    # 3.7233420783769213E-47
        0x3c5ef2fba97e5bbbL    # 6.7110276881368405E-18
    .end array-data

    :array_4f
    .array-data 8
        0x234c56b947e69a3aL
        -0x56e3deb5d4f1c67L    # -2.578773014300054E282
    .end array-data

    :array_50
    .array-data 8
        0x495e37774fee7e0L
        0x23222e79020bb0f0L
        0x448184bb65323ca0L    # 1.0341087960100917E22
    .end array-data

    :array_51
    .array-data 8
        0x2f1cb1e4685f09acL    # 9.453350809002913E-82
        -0x375e47765cbeb732L    # -7.71851884128656E41
    .end array-data

    :array_52
    .array-data 8
        -0x5c8135d211c83cf5L
        -0x18b610f85437b4cL
    .end array-data

    :array_53
    .array-data 8
        0x52abd8319a1bd18fL    # 1.772508194683027E90
        0x11929cbb1dcc0bf1L
    .end array-data

    :array_54
    .array-data 8
        -0x76586ad51bfb3001L
        0x65f598ca351479b5L    # 1.4338624782966112E183
    .end array-data

    :array_55
    .array-data 8
        0x3767385ab2f878d9L    # 8.329814542708379E-42
        0x59e1f14d560bb830L    # 9.488843018220513E124
    .end array-data

    :array_56
    .array-data 8
        0x36c553e63d16757fL    # 7.471629494163337E-45
        -0x3341f3ff1dcd30fcL    # -4.828348821410364E61
    .end array-data

    :array_57
    .array-data 8
        -0xb2e731bbb42ebceL    # -5.146859718560455E254
        -0x43d4acaf4b4b496fL    # -7.406578124261254E-19
    .end array-data
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->listNetwork:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 p3, 0x3

    .line 2
    const/4 v0, 0x2

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const v1, 0x7f0d0090

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;-><init>()V

    .line 24
    .line 25
    .line 26
    const v2, 0x7f0a029e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 36
    .line 37
    const v2, 0x7f0a029d

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 47
    .line 48
    const v2, 0x7f0a03fe

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 58
    .line 59
    const v2, 0x7f0a029c

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 69
    .line 70
    const v2, 0x7f0a00a4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;

    .line 90
    .line 91
    :goto_0
    iget-object v2, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 92
    .line 93
    invoke-virtual {v2}, Lconfig/ConfigUtil;->getNetworkSelectedPosition()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-ne v2, p1, :cond_1

    .line 98
    .line 99
    iget-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 100
    .line 101
    const v3, 0x7f080127

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    .line 106
    .line 107
    iget-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const v4, 0x7f060347

    .line 114
    .line 115
    .line 116
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    iget-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 125
    .line 126
    const v3, 0x7f080128

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    .line 131
    .line 132
    iget-object v2, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->check:Landroid/widget/ImageView;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    const v4, 0x7f06004a

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 146
    .line 147
    .line 148
    :goto_1
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->getItem(I)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-nez p1, :cond_2

    .line 153
    .line 154
    return-object p2

    .line 155
    :cond_2
    const/4 v2, 0x1

    .line 156
    :try_start_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v4, v0, [J

    .line 159
    .line 160
    fill-array-data v4, :array_0

    .line 161
    .line 162
    .line 163
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    const/16 v4, 0x8

    .line 175
    .line 176
    if-eqz v3, :cond_4

    .line 177
    .line 178
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 179
    .line 180
    new-array v5, v0, [J

    .line 181
    .line 182
    fill-array-data v5, :array_1

    .line 183
    .line 184
    .line 185
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_3

    .line 201
    .line 202
    iget-object v5, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :catch_0
    move-exception p1

    .line 209
    goto/16 :goto_4

    .line 210
    .line 211
    :cond_3
    :goto_2
    iget-object v5, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 212
    .line 213
    const/4 v6, 0x0

    .line 214
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    iget-object v5, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_4
    iget-object v3, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->mInfo:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    :goto_3
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 229
    .line 230
    new-array v5, v0, [J

    .line 231
    .line 232
    fill-array-data v5, :array_2

    .line 233
    .line 234
    .line 235
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    iget-object v5, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 247
    .line 248
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    iget-object v5, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-virtual {p0, v3}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->getIcon(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {p0, v5, v3}, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->setIcon(Landroid/widget/ImageView;I)V

    .line 266
    .line 267
    .line 268
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 269
    .line 270
    new-array v5, p3, [J

    .line 271
    .line 272
    fill-array-data v5, :array_3

    .line 273
    .line 274
    .line 275
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    const v3, 0x7f060024

    .line 287
    .line 288
    .line 289
    if-nez p1, :cond_6

    .line 290
    .line 291
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 292
    .line 293
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-eqz p1, :cond_5

    .line 302
    .line 303
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 304
    .line 305
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 306
    .line 307
    new-array v0, v0, [J

    .line 308
    .line 309
    fill-array-data v0, :array_4

    .line 310
    .line 311
    .line 312
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_5

    .line 323
    .line 324
    :cond_5
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 325
    .line 326
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 327
    .line 328
    new-array v0, v0, [J

    .line 329
    .line 330
    fill-array-data v0, :array_5

    .line 331
    .line 332
    .line 333
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_5

    .line 357
    .line 358
    :cond_6
    const v5, 0x7f06003c

    .line 359
    .line 360
    .line 361
    const v6, 0x7f06003b

    .line 362
    .line 363
    .line 364
    if-ne p1, v2, :cond_8

    .line 365
    .line 366
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 367
    .line 368
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-eqz p1, :cond_7

    .line 377
    .line 378
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 379
    .line 380
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 381
    .line 382
    new-array v3, p3, [J

    .line 383
    .line 384
    fill-array-data v3, :array_6

    .line 385
    .line 386
    .line 387
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    .line 396
    .line 397
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 398
    .line 399
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_5

    .line 411
    .line 412
    :cond_7
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 413
    .line 414
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 415
    .line 416
    new-array v3, p3, [J

    .line 417
    .line 418
    fill-array-data v3, :array_7

    .line 419
    .line 420
    .line 421
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    .line 430
    .line 431
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 432
    .line 433
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :cond_8
    if-ne p1, v0, :cond_a

    .line 447
    .line 448
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 449
    .line 450
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_9

    .line 459
    .line 460
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 461
    .line 462
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 463
    .line 464
    new-array v0, v0, [J

    .line 465
    .line 466
    fill-array-data v0, :array_8

    .line 467
    .line 468
    .line 469
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    .line 478
    .line 479
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 480
    .line 481
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_5

    .line 493
    .line 494
    :cond_9
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 495
    .line 496
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 497
    .line 498
    new-array v0, v0, [J

    .line 499
    .line 500
    fill-array-data v0, :array_9

    .line 501
    .line 502
    .line 503
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    .line 512
    .line 513
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 514
    .line 515
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_5

    .line 527
    .line 528
    :cond_a
    if-ne p1, p3, :cond_c

    .line 529
    .line 530
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 531
    .line 532
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 537
    .line 538
    .line 539
    move-result p1

    .line 540
    const v3, 0x7f060044

    .line 541
    .line 542
    .line 543
    if-eqz p1, :cond_b

    .line 544
    .line 545
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 546
    .line 547
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 548
    .line 549
    new-array v0, v0, [J

    .line 550
    .line 551
    fill-array-data v0, :array_a

    .line 552
    .line 553
    .line 554
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    .line 563
    .line 564
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 565
    .line 566
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_5

    .line 578
    .line 579
    :cond_b
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 580
    .line 581
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 582
    .line 583
    new-array v0, v0, [J

    .line 584
    .line 585
    fill-array-data v0, :array_b

    .line 586
    .line 587
    .line 588
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    .line 597
    .line 598
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 599
    .line 600
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_5

    .line 612
    .line 613
    :cond_c
    const/4 v7, 0x4

    .line 614
    if-ne p1, v7, :cond_e

    .line 615
    .line 616
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 617
    .line 618
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 623
    .line 624
    .line 625
    move-result p1

    .line 626
    if-eqz p1, :cond_d

    .line 627
    .line 628
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 629
    .line 630
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 631
    .line 632
    new-array v3, p3, [J

    .line 633
    .line 634
    fill-array-data v3, :array_c

    .line 635
    .line 636
    .line 637
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    .line 646
    .line 647
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 648
    .line 649
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 658
    .line 659
    .line 660
    goto/16 :goto_5

    .line 661
    .line 662
    :cond_d
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 663
    .line 664
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 665
    .line 666
    new-array v3, p3, [J

    .line 667
    .line 668
    fill-array-data v3, :array_d

    .line 669
    .line 670
    .line 671
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    .line 680
    .line 681
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 682
    .line 683
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_5

    .line 695
    .line 696
    :cond_e
    const/4 v5, 0x5

    .line 697
    if-ne p1, v5, :cond_10

    .line 698
    .line 699
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 700
    .line 701
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 702
    .line 703
    .line 704
    move-result-object p1

    .line 705
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    if-eqz p1, :cond_f

    .line 710
    .line 711
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 712
    .line 713
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 714
    .line 715
    new-array v0, v0, [J

    .line 716
    .line 717
    fill-array-data v0, :array_e

    .line 718
    .line 719
    .line 720
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    .line 729
    .line 730
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 731
    .line 732
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 741
    .line 742
    .line 743
    goto/16 :goto_5

    .line 744
    .line 745
    :cond_f
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 746
    .line 747
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 748
    .line 749
    new-array v0, v0, [J

    .line 750
    .line 751
    fill-array-data v0, :array_f

    .line 752
    .line 753
    .line 754
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    .line 763
    .line 764
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 765
    .line 766
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 771
    .line 772
    .line 773
    move-result v0

    .line 774
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_5

    .line 778
    .line 779
    :cond_10
    const/4 v5, 0x6

    .line 780
    const v6, 0x7f06034c

    .line 781
    .line 782
    .line 783
    if-ne p1, v5, :cond_11

    .line 784
    .line 785
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 786
    .line 787
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 788
    .line 789
    new-array v0, v0, [J

    .line 790
    .line 791
    fill-array-data v0, :array_10

    .line 792
    .line 793
    .line 794
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    .line 803
    .line 804
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 805
    .line 806
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 815
    .line 816
    .line 817
    goto/16 :goto_5

    .line 818
    .line 819
    :cond_11
    const/4 v5, 0x7

    .line 820
    if-ne p1, v5, :cond_13

    .line 821
    .line 822
    iget-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->config:Lconfig/ConfigUtil;

    .line 823
    .line 824
    invoke-virtual {p1}, Lconfig/ConfigUtil;->getOVPN()Ljava/lang/Boolean;

    .line 825
    .line 826
    .line 827
    move-result-object p1

    .line 828
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 829
    .line 830
    .line 831
    move-result p1

    .line 832
    if-eqz p1, :cond_12

    .line 833
    .line 834
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 835
    .line 836
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 837
    .line 838
    new-array v0, v0, [J

    .line 839
    .line 840
    fill-array-data v0, :array_11

    .line 841
    .line 842
    .line 843
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    .line 852
    .line 853
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 854
    .line 855
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 860
    .line 861
    .line 862
    move-result v0

    .line 863
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_5

    .line 867
    .line 868
    :cond_12
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 869
    .line 870
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 871
    .line 872
    new-array v0, v0, [J

    .line 873
    .line 874
    fill-array-data v0, :array_12

    .line 875
    .line 876
    .line 877
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    .line 886
    .line 887
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 888
    .line 889
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 898
    .line 899
    .line 900
    goto/16 :goto_5

    .line 901
    .line 902
    :cond_13
    if-ne p1, v4, :cond_14

    .line 903
    .line 904
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 905
    .line 906
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 907
    .line 908
    new-array v0, v0, [J

    .line 909
    .line 910
    fill-array-data v0, :array_13

    .line 911
    .line 912
    .line 913
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    .line 922
    .line 923
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 924
    .line 925
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 930
    .line 931
    .line 932
    move-result v0

    .line 933
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 934
    .line 935
    .line 936
    goto/16 :goto_5

    .line 937
    .line 938
    :cond_14
    const/16 v0, 0x9

    .line 939
    .line 940
    const v4, 0x7f06008b

    .line 941
    .line 942
    .line 943
    if-ne p1, v0, :cond_15

    .line 944
    .line 945
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 946
    .line 947
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 948
    .line 949
    new-array v3, p3, [J

    .line 950
    .line 951
    fill-array-data v3, :array_14

    .line 952
    .line 953
    .line 954
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    .line 963
    .line 964
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 965
    .line 966
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 975
    .line 976
    .line 977
    goto :goto_5

    .line 978
    :cond_15
    const/16 v0, 0xa

    .line 979
    .line 980
    if-ne p1, v0, :cond_16

    .line 981
    .line 982
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 983
    .line 984
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 985
    .line 986
    new-array v3, p3, [J

    .line 987
    .line 988
    fill-array-data v3, :array_15

    .line 989
    .line 990
    .line 991
    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 992
    .line 993
    .line 994
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    .line 1000
    .line 1001
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 1002
    .line 1003
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1012
    .line 1013
    .line 1014
    goto :goto_5

    .line 1015
    :cond_16
    const/16 v0, 0xb

    .line 1016
    .line 1017
    if-ne p1, v0, :cond_17

    .line 1018
    .line 1019
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 1020
    .line 1021
    const v0, 0x7f13033e

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1025
    .line 1026
    .line 1027
    iget-object p1, v1, Lcom/tknetwork/tunnel/adapter/NetworkAdapter$ViewHolder;->tunnel_title:Landroid/widget/TextView;

    .line 1028
    .line 1029
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 1034
    .line 1035
    .line 1036
    move-result v0

    .line 1037
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    .line 1039
    .line 1040
    goto :goto_5

    .line 1041
    :goto_4
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v0

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1048
    .line 1049
    .line 1050
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 1051
    .line 1052
    new-array p3, p3, [J

    .line 1053
    .line 1054
    fill-array-data p3, :array_16

    .line 1055
    .line 1056
    .line 1057
    invoke-direct {v3, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object p3

    .line 1064
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object p1

    .line 1071
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object p1

    .line 1078
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1079
    .line 1080
    .line 1081
    move-result-object p1

    .line 1082
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1083
    .line 1084
    .line 1085
    :cond_17
    :goto_5
    return-object p2

    .line 1086
    nop

    .line 1087
    :array_0
    .array-data 8
        0x3a7c5b655b62a156L    # 5.726653641288564E-27
        -0x7ad37a08cf468dc8L    # -9.590779671865813E-284
    .end array-data

    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    :array_1
    .array-data 8
        0x7beb9d73b8c52e28L    # 8.40991577148579E288
        -0x414380abc5702ab6L    # -1.6985761510634073E-6
    .end array-data

    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    :array_2
    .array-data 8
        -0x6f9e02c4c29020dfL    # -9.269681439306955E-230
        -0x4ac81970c7f6f0dL
    .end array-data

    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    :array_3
    .array-data 8
        0x2d31e937bbdb6d38L    # 5.495425365776415E-91
        -0x42bdbbaab3ddcdedL    # -1.297943195409708E-13
        -0x6ab6626dea87a44bL    # -3.989293516574395E-206
    .end array-data

    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    :array_4
    .array-data 8
        -0x2c1586b9ace79d77L    # -1.767110706747983E96
        -0x2b96f10c088e3a93L    # -4.2819551350599687E98
    .end array-data

    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    :array_5
    .array-data 8
        -0x5e37db047e19cad1L    # -6.042402576406586E-146
        0x6b2a7a03be77d9dbL    # 1.7000807795771108E208
    .end array-data

    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :array_6
    .array-data 8
        -0x61800a70dbb8fe43L    # -8.879703212445286E-162
        0x55aa0065c6d10aeaL    # 4.6589473274819466E104
        -0x59cd348b870dd546L
    .end array-data

    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    :array_7
    .array-data 8
        0x3e1c247d3735d0f2L    # 1.638111171744434E-9
        0x6012b47338ff1154L    # 6.269787018358657E154
        0x1677de8d3f1a385L
    .end array-data

    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    :array_8
    .array-data 8
        0x29a891f911c74a97L    # 5.230947679717416E-108
        -0x781419d1b0e65b33L    # -1.650307172110282E-270
    .end array-data

    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    :array_9
    .array-data 8
        -0x4a342a34ec0728eaL    # -1.4879350619391042E-49
        0x5e3aee27c39ad6d6L    # 8.406960703992272E145
    .end array-data

    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    :array_a
    .array-data 8
        0x58ce4cd5f9b0f3adL    # 6.112697877615621E119
        0x487e0abf1cb12a9fL    # 1.6356408957168044E41
    .end array-data

    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    :array_b
    .array-data 8
        -0xd6274e20fb0f193L    # -1.260774324182475E244
        -0x62cf52946922b0d5L    # -4.419074981501068E-168
    .end array-data

    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    :array_c
    .array-data 8
        -0x3cf175d635859a87L    # -1.0745201745788631E15
        0x2f3f780bb56c5bccL    # 4.146895937485069E-81
        -0x33e2ba62c141d96aL    # -4.5935721622671004E58
    .end array-data

    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    :array_d
    .array-data 8
        0x643737ef870edd2L
        -0x5b31b2aee6418d00L
        -0x298929ab7ee51cf0L    # -3.3521374953680897E108
    .end array-data

    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    :array_e
    .array-data 8
        0xca3be8d51d845b4L
        -0x5157d202e45ec828L    # -6.223305337121027E-84
    .end array-data

    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    :array_f
    .array-data 8
        -0x711d3891f5d8ce1L
        -0x7af6e7a9a73ca54L    # -3.501206860397088E271
    .end array-data

    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    :array_10
    .array-data 8
        -0x37059ee1a2879955L    # -3.6767474975721635E43
        -0x17e871cecf047deaL    # -2.6867571888611727E193
    .end array-data

    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    :array_11
    .array-data 8
        0x60c4c801b2ba8831L    # 1.4265925425417038E158
        0x1e350897b69e3524L    # 3.652542230641681E-163
    .end array-data

    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    :array_12
    .array-data 8
        -0x4e1b51b281c4c3ceL    # -2.397175313213507E-68
        0x7de45eef49e0f89aL
    .end array-data

    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    :array_13
    .array-data 8
        -0x3ec5b4f35fb67011L    # -1723148.6261224707
        -0x43a676b6a623394dL    # -5.537297074384614E-18
    .end array-data

    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    :array_14
    .array-data 8
        0x73fef03ff4d6a889L    # 5.5377752412789473E250
        -0x3be27c48d92fbe02L    # -1.3611166888829646E20
        -0x39fdc329f912c1a2L    # -1.8061684608525095E29
    .end array-data

    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    :array_15
    .array-data 8
        -0x383b98543f9822f3L    # -5.424570005624204E37
        -0xbfca68ceb7df331L    # -6.926824472789205E250
        0x656cb7f3e696b4c8L
    .end array-data

    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    :array_16
    .array-data 8
        0x3aa24c3b100db26fL    # 2.956165184863195E-26
        -0x78ad38d13b62be11L
        0x20585702aa64901L
    .end array-data
.end method

.method public refreshDataSet(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tknetwork/tunnel/adapter/NetworkAdapter;->listNetwork:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIcon(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
