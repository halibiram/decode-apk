.class final Lcom/google/android/gms/dynamic/zae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zaa:Landroid/content/Context;

.field final synthetic zab:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zae;->zaa:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zae;->zab:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/dynamic/zae;->zaa:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/dynamic/zae;->zab:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    new-array v0, v0, [J

    .line 27
    .line 28
    fill-array-data v0, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x72c2844aedb634b9L    # -6.746812227656649E-245
        0x2d00e5ecbdd30a35L    # 6.480825508755969E-92
        0x970382df8b1f6fbL
        0x216318b1bf896de4L    # 7.467325037649833E-148
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
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
    :array_1
    .array-data 8
        -0x559ed93eea3b05b1L
        -0x65866f28c06f73c4L
        -0x58576d194550a828L
        -0x72c66ff514d713fbL    # -5.849647470315543E-245
        -0x1985c2be6c41cbaL    # -7.915754806790005E300
        -0xcf0429cf6499dfbL    # -1.733766300849754E246
    .end array-data
.end method
