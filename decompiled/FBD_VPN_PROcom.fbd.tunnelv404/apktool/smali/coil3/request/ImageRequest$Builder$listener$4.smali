.class public final Lcoil3/request/ImageRequest$Builder$listener$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil3/request/ImageRequest$Builder;->listener$default(Lcoil3/request/ImageRequest$Builder;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcoil3/request/ImageRequest$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcoil3/request/ImageRequest;",
        "Lcoil3/request/SuccessResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0xb0
.end annotation


# static fields
.field public static final INSTANCE:Lcoil3/request/ImageRequest$Builder$listener$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil3/request/ImageRequest$Builder$listener$4;

    invoke-direct {v0}, Lcoil3/request/ImageRequest$Builder$listener$4;-><init>()V

    sput-object v0, Lcoil3/request/ImageRequest$Builder$listener$4;->INSTANCE:Lcoil3/request/ImageRequest$Builder$listener$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lcoil3/request/ImageRequest;

    check-cast p2, Lcoil3/request/SuccessResult;

    invoke-virtual {p0, p1, p2}, Lcoil3/request/ImageRequest$Builder$listener$4;->invoke(Lcoil3/request/ImageRequest;Lcoil3/request/SuccessResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcoil3/request/ImageRequest;Lcoil3/request/SuccessResult;)V
    .locals 0

    .line 1
    return-void
.end method
