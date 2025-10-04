.class public final Lcom/google/android/gms/internal/ads/zzbnq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# direct methods
.method public static final zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfhl;)Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x5

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 7
    .line 8
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array p4, p1, [J

    .line 11
    .line 12
    fill-array-data p4, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p3, p4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/high16 p3, 0x10000000

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array p1, p1, [J

    .line 36
    .line 37
    fill-array-data p1, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    return-object p2

    .line 51
    :array_0
    .array-data 8
        0x46ab01e81c60ace2L    # 2.738880611449236E32
        -0x3456081cf9dccdddL    # -3.1837052800578193E56
        0x2f0ab347ea4ad63dL    # 4.398125271193305E-82
        -0x5c69be8a483aa7dbL
        0xae77ecbfc0345efL
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x2deec496091d047fL    # -2.142479149950225E87
        0x17ff931cdf66d9c2L    # 4.325352091970358E-193
        0x6ca1a804214a5c36L    # 1.9020719309300153E215
        -0x51ffce9733cb5369L    # -4.070040405856738E-87
        -0x566871a9d873b2a5L
    .end array-data
.end method

.method public static final zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfhl;)Landroid/content/Intent;
    .locals 0

    .line 1
    new-instance p2, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7
    .line 8
    iget-object p1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    return-object p2
.end method

.method public static final zzc(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfhl;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbnq;->zzd(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfhl;)Landroid/content/pm/ResolveInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final zzd(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavi;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfhl;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object p3

    .line 9
    :cond_0
    const/high16 p4, 0x10000

    .line 10
    .line 11
    invoke-virtual {p2, p0, p4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p5

    .line 15
    invoke-virtual {p2, p0, p4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p5, :cond_2

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    if-ge p2, p4, :cond_2

    .line 29
    .line 30
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    check-cast p4, Landroid/content/pm/ResolveInfo;

    .line 35
    .line 36
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 41
    .line 42
    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    if-eqz p4, :cond_1

    .line 49
    .line 50
    move-object p3, p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    const/16 p2, 0x9

    .line 63
    .line 64
    new-array p2, p2, [J

    .line 65
    .line 66
    fill-array-data p2, :array_0

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-object p3

    .line 84
    nop

    .line 85
    :array_0
    .array-data 8
        -0x15048ef3f4ac57fdL    # -2.2025526873095447E207
        0x5cced01fc2009baL
        -0x277fba79f73fd2e2L    # -2.051624819459384E118
        0x5b20e177684a6c71L    # 9.360936733407998E130
        0x2a03eada42682cceL    # 2.713838687229169E-106
        0x6b58645ee29a76c8L    # 1.2529845509855271E209
        -0x6ac6b5a303cb96d1L
        -0x5183b379be88c4L
        0x3e9f5d36b1d68e6cL    # 4.6736174560467586E-7
    .end array-data
.end method
