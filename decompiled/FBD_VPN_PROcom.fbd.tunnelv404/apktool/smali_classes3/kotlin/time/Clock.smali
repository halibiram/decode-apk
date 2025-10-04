.class public interface abstract Lkotlin/time/Clock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Clock$Companion;,
        Lkotlin/time/Clock$System;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005J\u0008\u0010\u0002\u001a\u00020\u0003H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/time/Clock;",
        "",
        "now",
        "Lkotlin/time/Instant;",
        "System",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "2.1"
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/Clock$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/time/Clock$Companion;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Lkotlin/time/Clock$Companion;

    sput-object v0, Lkotlin/time/Clock;->Companion:Lkotlin/time/Clock$Companion;

    return-void
.end method


# virtual methods
.method public abstract now()Lkotlin/time/Instant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
