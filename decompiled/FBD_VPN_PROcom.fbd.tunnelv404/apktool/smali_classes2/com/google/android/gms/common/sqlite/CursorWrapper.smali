.class public Lcom/google/android/gms/common/sqlite/CursorWrapper;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private zza:Landroid/database/AbstractWindowedCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    const/16 v1, 0xa

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    instance-of v1, p1, Landroid/database/CursorWrapper;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast p1, Landroid/database/CursorWrapper;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    instance-of v0, p1, Landroid/database/AbstractWindowedCursor;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, Landroid/database/AbstractWindowedCursor;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v2, 0x3

    .line 44
    new-array v2, v2, [J

    .line 45
    .line 46
    fill-array-data v2, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        0x2453c8c33e7baf33L    # 1.088782340667165E-133
        -0x9f33a6b1d3ea7f3L
        0x221c1726975aa946L
    .end array-data
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .param p2    # Landroid/database/CursorWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic getWrappedCursor()Landroid/database/Cursor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    return-object v0
.end method

.method public final onMove(II)Z
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .param p1    # Landroid/database/CursorWindow;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zza:Landroid/database/AbstractWindowedCursor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
