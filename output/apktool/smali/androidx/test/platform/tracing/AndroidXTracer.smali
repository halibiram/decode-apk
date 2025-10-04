.class Landroidx/test/platform/tracing/AndroidXTracer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/test/platform/tracing/Tracer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;
    }
.end annotation


# static fields
.field private static final MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "AndroidXTracer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/test/platform/tracing/AndroidXTracer;->sanitizeSpanName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static sanitizeSpanName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    return-object p0
.end method


# virtual methods
.method public beginSpan(Ljava/lang/String;)Landroidx/test/platform/tracing/Tracer$Span;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/test/platform/tracing/AndroidXTracer;->sanitizeSpanName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, v0}, Landroidx/test/platform/tracing/AndroidXTracer$AndroidXTracerSpan;-><init>(Landroidx/test/platform/tracing/AndroidXTracer$1;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public enableTracing()Landroidx/test/platform/tracing/AndroidXTracer;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Landroidx/tracing/Trace;->forceEnableAppTracing()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    return-object p0
.end method
