.class public final Lokhttp3/internal/http2/FlowControlListener$None;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http2/FlowControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/FlowControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/internal/http2/FlowControlListener$None;",
        "Lokhttp3/internal/http2/FlowControlListener;",
        "",
        "streamId",
        "Lokhttp3/internal/http2/flowcontrol/WindowCounter;",
        "windowCounter",
        "",
        "bufferSize",
        "",
        "receivingStreamWindowChanged",
        "(ILokhttp3/internal/http2/flowcontrol/WindowCounter;J)V",
        "receivingConnectionWindowChanged",
        "(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/http2/FlowControlListener$None;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/FlowControlListener$None;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lokhttp3/internal/http2/FlowControlListener$None;->INSTANCE:Lokhttp3/internal/http2/FlowControlListener$None;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public receivingConnectionWindowChanged(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V
    .locals 1
    .param p1    # Lokhttp3/internal/http2/flowcontrol/WindowCounter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "windowCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public receivingStreamWindowChanged(ILokhttp3/internal/http2/flowcontrol/WindowCounter;J)V
    .locals 0
    .param p2    # Lokhttp3/internal/http2/flowcontrol/WindowCounter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "windowCounter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
