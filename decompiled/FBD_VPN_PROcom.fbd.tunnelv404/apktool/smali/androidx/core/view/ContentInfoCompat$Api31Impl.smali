.class final Landroidx/core/view/ContentInfoCompat$Api31Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static partition(Landroid/view/ContentInfo;Ljava/util/function/Predicate;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ContentInfo;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ClipData$Item;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/view/ContentInfo;",
            "Landroid/view/ContentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ContentInfo;->getClip()Landroid/content/ClipData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v3

    .line 27
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    move-object p0, v3

    .line 30
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_2
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v1, L둥땩딎돴듸뒼딎땳뎽땧딤땣도둠딸돶뒐딀들땬듸뎨땨둔땧딄딅뒛땤듌딟둬딞땸돶돴땩땍딸딽딻딞딽돛돶땥될땐뒙뒙듔땩딝땃뎸땟돶돶돵딟돠돳듽듐땰뒘뒉땳듔둡돝뒹돵땍땋딽땦땋땸되됩딻땵딃땡뎹듸뒨뒐땻둬뒤땳돠딅든땪둔땟땀돼둔딎땜딎땯둠땀땵딜둔뎻듸뒻됩땫뒙뎻뒷듸뎽땹돳뒐뒼두뎽뎨듬돝;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p1, v2}, L둥땩딎돴듸뒼딎땳뎽땧딤땣도둠딸돶뒐딀들땬듸뎨땨둔땧딄딅뒛땤듌딟둬딞땸돶돴땩땍딸딽딻딞딽돛돶땥될땐뒙뒙듔땩딝땃뎸땟돶돶돵딟돠돳듽듐땰뒘뒉땳듔둡돝뒹돵땍땋딽땦땋땸되됩딻땵딃땡뎹듸뒨뒐땻둬뒤땳돠딅든땪둔땟땀돼둔딎땜딎땯둠땀땵딜둔뎻듸뒻됩땫뒙뎻뒷듸뎽땹돳뒐뒼두뎽뎨듬돝;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/core/view/ContentInfoCompat;->partition(Landroid/content/ClipData;Landroidx/core/util/Predicate;)Landroid/util/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_3
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    new-instance v0, Landroid/view/ContentInfo$Builder;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Landroid/content/ClipData;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v1, Landroid/view/ContentInfo$Builder;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/view/ContentInfo;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p0, Landroid/content/ClipData;

    .line 91
    .line 92
    invoke-virtual {v1, p0}, Landroid/view/ContentInfo$Builder;->setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method
