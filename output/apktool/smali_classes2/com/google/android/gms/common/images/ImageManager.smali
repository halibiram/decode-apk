.class public final Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;,
        Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
    }
.end annotation


# static fields
.field private static final zaa:Ljava/lang/Object;

.field private static zab:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static zac:Lcom/google/android/gms/common/images/ImageManager;


# instance fields
.field private final zad:Landroid/content/Context;

.field private final zae:Landroid/os/Handler;

.field private final zaf:Ljava/util/concurrent/ExecutorService;

.field private final zag:Lcom/google/android/gms/internal/base/zak;

.field private final zah:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/images/zag;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zai:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final zaj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zad:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/gms/internal/base/zaq;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/base/zaq;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zae:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/base/zap;->zaa()Lcom/google/android/gms/internal/base/zam;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x4

    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/base/zam;->zab(II)Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zaf:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    new-instance p1, Lcom/google/android/gms/internal/base/zak;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/google/android/gms/internal/base/zak;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zag:Lcom/google/android/gms/internal/base/zak;

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zah:Ljava/util/Map;

    .line 46
    .line 47
    new-instance p1, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zai:Ljava/util/Map;

    .line 53
    .line 54
    new-instance p1, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager;->zaj:Ljava/util/Map;

    .line 60
    .line 61
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/gms/common/images/ImageManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/images/ImageManager;-><init>(Landroid/content/Context;Z)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    .line 12
    .line 13
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/images/ImageManager;->zac:Lcom/google/android/gms/common/images/ImageManager;

    .line 14
    .line 15
    return-object p0
.end method

.method public static bridge synthetic zaa(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zad:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic zab(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zae:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic zac(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/base/zak;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zag:Lcom/google/android/gms/internal/base/zak;

    return-object p0
.end method

.method public static bridge synthetic zad()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zaa:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic zae()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->zab:Ljava/util/HashSet;

    return-object v0
.end method

.method public static bridge synthetic zaf(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zaj:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zag(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zah:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zah(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zai:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic zai(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/ImageManager;->zaf:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public loadImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    new-instance v0, Lcom/google/android/gms/common/images/zae;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zae;-><init>(Landroid/widget/ImageView;Landroid/net/Uri;)V

    iput p3, v0, Lcom/google/android/gms/common/images/zag;->zab:I

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    new-instance v0, Lcom/google/android/gms/common/images/zaf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zaf;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public loadImage(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;I)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    new-instance v0, Lcom/google/android/gms/common/images/zaf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/zaf;-><init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V

    iput p3, v0, Lcom/google/android/gms/common/images/zag;->zab:I

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj(Lcom/google/android/gms/common/images/zag;)V

    return-void
.end method

.method public final zaj(Lcom/google/android/gms/common/images/zag;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/common/images/zab;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/images/zab;-><init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/zag;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 8
        0x7aa226dda23631eaL    # 5.271887169799271E282
        0x4ec3c421c40979b2L    # 2.728417721727139E71
        0x164c527c0cc2a71dL    # 2.890679727848048E-201
        -0xd43605e83eeadc1L
        0x4d3cd0364fd12510L
        -0x6c3bb777d5709fdeL
        -0x46d19cc256267dfeL    # -2.9262251839482767E-33
        0x501601434057f267L    # 6.369992747264223E77
        0x7b94d9580e3f600cL    # 1.98418018147161E287
    .end array-data
.end method
