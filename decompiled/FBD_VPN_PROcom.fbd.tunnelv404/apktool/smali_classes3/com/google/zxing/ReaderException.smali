.class public abstract Lcom/google/zxing/ReaderException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field protected static final NO_TRACE:[Ljava/lang/StackTraceElement;

.field protected static isStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

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
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    sput-boolean v0, Lcom/google/zxing/ReaderException;->isStackTrace:Z

    .line 27
    .line 28
    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 29
    .line 30
    sput-object v0, Lcom/google/zxing/ReaderException;->NO_TRACE:[Ljava/lang/StackTraceElement;

    .line 31
    .line 32
    return-void

    .line 33
    :array_0
    .array-data 8
        -0x179c6cb68b96cd85L    # -7.144905952368373E194
        -0x641cf95693e73517L    # -2.403922870619919E-174
        0x122acc5d9a056a0aL    # 3.706811424878416E-221
        0x6b04e475e317bc52L    # 3.3537899345372673E207
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setStackTrace(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/google/zxing/ReaderException;->isStackTrace:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0
.end method
