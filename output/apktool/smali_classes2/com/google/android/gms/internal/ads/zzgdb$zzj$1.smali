.class Lcom/google/android/gms/internal/ads/zzgdb$zzj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzgdb$zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic run()Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-class v1, Lsun/misc/Unsafe;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    array-length v3, v2

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v3, :cond_1

    .line 11
    .line 12
    aget-object v5, v2, v4

    .line 13
    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lsun/misc/Unsafe;

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    add-int/2addr v4, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldError;

    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    fill-array-data v2, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    nop

    .line 59
    :array_0
    .array-data 8
        -0x7b74a9577ecf9968L
        -0x595ad531b982b504L
        0xfebd8837a0dd706L    # 5.604958066682456E-232
    .end array-data
.end method
