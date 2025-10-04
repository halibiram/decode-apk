.class public final Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0017\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001H\u0086\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "MutableStateFlowSerializer",
        "Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;",
        "T",
        "savedstate_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic MutableStateFlowSerializer()Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const-string v2, "T"

    .line 5
    .line 6
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "kotlinx.serialization.serializer.simple"

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroidx/savedstate/serialization/serializers/MutableStateFlowSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
