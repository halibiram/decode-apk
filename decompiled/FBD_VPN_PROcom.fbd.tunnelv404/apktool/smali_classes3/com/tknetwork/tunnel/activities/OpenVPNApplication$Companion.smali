.class public final Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u000bJ\u0016\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\'J\u0010\u0010)\u001a\u00020\u00132\u0006\u0010*\u001a\u00020+H\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@BX\u0087\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0003\u001a\u0004\u0008\u001b\u0010\u001cR&\u0010\u001d\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001e\u0010\u0003\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R\u0010\u0010!\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;",
        "",
        "<init>",
        "()V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "mOnByCountListener",
        "Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;",
        "application",
        "Lcom/tknetwork/tunnel/activities/OpenVPNApplication;",
        "getApplication",
        "()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;",
        "setApplication",
        "(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V",
        "PREFS_GENERAL",
        "",
        "PREFS_SPLIT",
        "sharedPreferences",
        "Lcom/tknetwork/tunnel/securepreferences/SecurePreferences;",
        "value",
        "Landroid/content/SharedPreferences;",
        "privateSharedPreferences",
        "getPrivateSharedPreferences$annotations",
        "getPrivateSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "app",
        "getApp$annotations",
        "getApp",
        "setApp",
        "splitSharedPreferences",
        "setByteCountListener",
        "",
        "OnByCountListener",
        "updateByteCount",
        "in",
        "",
        "out",
        "resString",
        "res_id",
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
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getApp$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getPrivateSharedPreferences$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getApp()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->access$getApp$cp()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getApplication()Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->application:Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x65580c78a175e739L    # -2.886033794057097E-180
        -0x1c97f9c81d35c381L    # -7.253341495263187E170
        0x2b356cbdb2c5913dL
    .end array-data
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->access$getContext$cp()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getPrivateSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->access$getPrivateSharedPreferences$cp()Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final resString(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication$Companion;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

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
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :array_0
    .array-data 8
        -0x10f022f4580dc4f3L    # -9.435386037251522E226
        -0x4ede2c038bae60e5L    # -5.0451652702105E-72
        -0x1fbbc88f8aa748e1L    # -5.421194996952306E155
    .end array-data
.end method

.method public final setApp(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V
    .locals 0
    .param p1    # Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->access$setApp$cp(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setApplication(Lcom/tknetwork/tunnel/activities/OpenVPNApplication;)V
    .locals 2
    .param p1    # Lcom/tknetwork/tunnel/activities/OpenVPNApplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    sput-object p1, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->application:Lcom/tknetwork/tunnel/activities/OpenVPNApplication;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0xac37de439bf429aL    # -5.350651595313878E256
        0x6e37ec7f12f03db1L    # 8.647831637440479E222
    .end array-data
.end method

.method public final setByteCountListener(Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;)V
    .locals 0
    .param p1    # Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->access$setMOnByCountListener$cp(Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->access$setContext$cp(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateByteCount(JJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tknetwork/tunnel/activities/OpenVPNApplication;->access$getMOnByCountListener$cp()Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tknetwork/tunnel/interfaces/OnByteCountListener;->onByteCount(JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
