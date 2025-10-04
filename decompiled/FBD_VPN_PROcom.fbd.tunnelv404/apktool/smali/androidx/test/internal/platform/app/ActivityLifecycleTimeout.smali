.class public Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIFECYCLE_CHANGE_TIMEOUT_MILLIS_KEY:Ljava/lang/String; = "activityLifecycleChangeTimeoutMillis"

.field private static final DEFAULT_ACTIVITY_LIFECYCLE_CHANGE_TIMEOUT_MILLIS:I = 0xafc8


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

.method public static getMillis()J
    .locals 3

    .line 1
    const-string v0, "activityLifecycleChangeTimeoutMillis"

    .line 2
    .line 3
    const-wide/32 v1, 0xafc8

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroidx/test/internal/platform/util/InstrumentationParameterUtil;->getTimeoutMillis(Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method
