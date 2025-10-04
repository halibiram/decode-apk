.class public interface abstract Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Stub;,
        Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tknetwork/pro/aidl/IUltraSSHServiceInternal;->DESCRIPTOR:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x57220825aeffa373L    # 5.420609135556925E111
        -0x615b577f6a10c095L    # -4.591822160907583E-161
        0x698e026e359ea9aeL    # 2.8713478538151265E200
        0x36c9112c0af403a5L    # 8.78161457807432E-45
        0x11a1ba1a8ddf220fL    # 9.578283414104263E-224
        -0x15087da4e741ff5eL    # -1.8869262728299118E207
        0x72091332f7d72025L    # 2.0900054789035232E241
    .end array-data
.end method


# virtual methods
.method public abstract stopVPN()V
.end method
