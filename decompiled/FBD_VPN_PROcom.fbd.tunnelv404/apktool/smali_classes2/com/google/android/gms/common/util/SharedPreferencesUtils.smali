.class public Lcom/google/android/gms/common/util/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static publishWorldReadableSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/16 p2, 0x9

    .line 6
    .line 7
    new-array p2, p2, [J

    .line 8
    .line 9
    fill-array-data p2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :array_0
    .array-data 8
        -0x53e6e595b2558719L    # -2.938124639654759E-96
        -0x19728232774aa9fL    # -8.318661622667379E300
        0x52bff6d94aab263L
        0x1a518dc67f61fcb6L    # 6.60988681669941E-182
        -0x6291602b8d8b2486L
        0x1c8452c74938ab51L    # 2.629467723150643E-171
        0x68acb34a20629647L    # 1.6760786151362762E196
        -0x68e1be39cb1d7e44L
        0x55306db8abf5bb94L    # 2.2997417808244036E102
    .end array-data
.end method
