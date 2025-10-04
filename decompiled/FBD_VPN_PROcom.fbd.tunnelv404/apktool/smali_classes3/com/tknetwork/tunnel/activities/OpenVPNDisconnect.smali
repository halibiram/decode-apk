.class public Lcom/tknetwork/tunnel/activities/OpenVPNDisconnect;
.super Lcom/tknetwork/tunnel/activities/MainBaseActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNDisconnect;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x61b62fd940a9cf8fL    # -8.965042875268625E-163
        -0xee58d106d2a7f1dL    # -6.727680246076348E236
        0x3f1bec02a54d6418L    # 1.0651365421433833E-4
        -0x7f7131fe01a88c42L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [J

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [J

    .line 22
    .line 23
    fill-array-data v0, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/tknetwork/tunnel/activities/MainBaseActivity;->submitDisconnectIntent(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x72acb8bddd0c2cbL
        -0x58acb43cb81787a5L    # -2.989013366006047E-119
        -0x650619b76b620adbL    # -9.986532475379692E-179
        -0x2f82558e72fa7b9eL    # -5.496103038647394E79
    .end array-data

    .line 42
    .line 43
    .line 44
    :array_1
    .array-data 8
        0x71e8f72bd1194b07L    # 5.202199894227855E240
        -0x5c72deb09898dee4L
        -0x2dfe42157aa8493cL    # -1.1029298891283711E87
    .end array-data
.end method
