.class public final Lcom/google/android/gms/internal/ads/zzfjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfjf;


# instance fields
.field private final zza:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzw;)V
    .locals 5

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p4, 0x3

    new-array v4, p4, [J

    fill-array-data v4, :array_1

    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v2, [J

    fill-array-data p3, :array_2

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-wide p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzb:J

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v2, [J

    fill-array-data p3, :array_3

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzc:Landroid/os/Bundle;

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfjg;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v2, [J

    fill-array-data p3, :array_4

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzc:Landroid/os/Bundle;

    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_5

    invoke-direct {p3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    :goto_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v2, [J

    fill-array-data p3, :array_6

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzd:I

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v2, [J

    fill-array-data p3, :array_7

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zze:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_6
    :goto_1
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, p4, [J

    fill-array-data v4, :array_8

    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzf:Z

    .line 22
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x5

    new-array v4, v4, [J

    fill-array-data v4, :array_9

    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzg:I

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_a

    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzh:Z

    .line 26
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v0, [J

    fill-array-data v4, :array_b

    invoke-direct {p2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzi:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_c

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzk:Landroid/location/Location;

    if-eqz p2, :cond_b

    .line 30
    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_b
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_c
    :goto_2
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, p4, [J

    fill-array-data v2, :array_d

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzl:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, p4, [J

    fill-array-data v2, :array_e

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzm:Landroid/os/Bundle;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfjg;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, p4, [J

    fill-array-data v2, :array_f

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzn:Landroid/os/Bundle;

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfjg;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_10

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzo:Ljava/util/List;

    if-eqz p2, :cond_10

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 41
    :cond_10
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_11
    :goto_3
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, p4, [J

    fill-array-data v2, :array_11

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzp:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, p4, [J

    fill-array-data v2, :array_12

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzq:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_13

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 47
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzr:Z

    .line 48
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v0, [J

    fill-array-data v2, :array_14

    invoke-direct {p2, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 49
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget p2, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzt:I

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_15

    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzl;->zzu:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    new-array p2, p4, [J

    fill-array-data p2, :array_16

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    if-eqz p5, :cond_17

    iget p1, p5, Lcom/google/android/gms/ads/internal/client/zzw;->zza:I

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 55
    :cond_17
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_18
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjg;->zza:[Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 8
        -0x7f833dfc518dc053L
        0x39f1e84539f7a1faL    # 1.4126373867012327E-29
    .end array-data

    :array_1
    .array-data 8
        -0x716765216b00a24eL
        0x5208aaaa6a019e52L    # 1.5334130726745041E87
        0x1b4bc9cdc1d6d559L
    .end array-data

    :array_2
    .array-data 8
        -0x6567062d58499cfeL
        -0x7484d828448f6fbaL
    .end array-data

    :array_3
    .array-data 8
        -0x7410cee2a04a5bf1L    # -3.403571081622924E-251
        -0x2296fe63b34b6cbcL    # -9.529217929786244E141
    .end array-data

    :array_4
    .array-data 8
        0x50b3bea688f2e1d5L    # 5.852885449057727E80
        0x7fe353585a2d27a2L    # 1.085669966891259E308
    .end array-data

    :array_5
    .array-data 8
        0x2917959f32a46e34L    # 9.806805205028777E-111
        0x4617a56e135978cfL    # 4.68361459416047E29
    .end array-data

    :array_6
    .array-data 8
        -0x540aa8d91728653dL    # -6.244313841674542E-97
        -0x3eecd0256c18a42bL    # -314358.644437251
    .end array-data

    :array_7
    .array-data 8
        -0x4e3b1fe47b2eb890L    # -6.04931530511892E-69
        0x97c05d7ec47abcbL
    .end array-data

    :array_8
    .array-data 8
        0x408b28e8aceb44acL    # 869.1136110668499
        -0x37c55ae81e2eee9eL    # -9.066788162182884E39
        0x53e4a4da2413e2aeL    # 1.377975537125342E96
    .end array-data

    :array_9
    .array-data 8
        0x711300beaa2012d5L    # 4.833666746024392E236
        -0x7c3e85503e383c47L
        -0x3e16b6550c7d4848L    # -3.3940663320849266E9
        -0x644dc8927ee8a56L
        0x3ee8a4e96fa320f1L    # 1.175126407239365E-5
    .end array-data

    :array_a
    .array-data 8
        -0x7566bd9464c130f8L
        -0x5afdd956ff2e684dL
        -0x1b415e0b6112a9feL
        0x7241e86ad1bab1d3L    # 2.3882000370410714E242
    .end array-data

    :array_b
    .array-data 8
        -0x71a0b20d70b328dbL    # -1.87788930173554E-239
        -0x1ce2074c3007e142L    # -2.8277822777984014E169
        -0x46fc53927df5ed9dL    # -4.736233909329142E-34
        0x73cff9d5bf8f9282L    # 7.154337791347256E249
    .end array-data

    :array_c
    .array-data 8
        -0x53b5d3ad47f0cf3eL    # -2.450683150350702E-95
        0x692744436c0154cfL    # 3.478412532972246E198
    .end array-data

    :array_d
    .array-data 8
        0x741d50fe4c9f4a74L    # 2.0989724965844587E251
        0x7a7af28f65c428dbL    # 9.783053953280463E281
        -0x15ed622c48e5de12L    # -9.120011880402148E202
    .end array-data

    :array_e
    .array-data 8
        0x71281126ffe6c029L    # 1.2243584615368042E237
        -0x6716e3f3eaa22ac8L
        -0x212fd7e3b94912d4L    # -5.16475872551163E148
    .end array-data

    :array_f
    .array-data 8
        0x288f7875af21f4ccL
        0xb2c1017e3820107L
        -0x7a3df24fde04be76L    # -6.21605308206906E-281
    .end array-data

    :array_10
    .array-data 8
        0x71cd28394e8a545dL    # 1.5189072385637373E240
        0x4ad5cb68f5fc0221L    # 3.261726742137947E52
        -0x4e8fffbc40c3914dL    # -1.449002264555987E-70
        -0x74a36e876fa18faaL    # -6.088457008876114E-254
    .end array-data

    :array_11
    .array-data 8
        0x4af5121c66bfa348L    # 1.2613603159799187E53
        0xc756ccbb009059aL
        -0x18c3936f892e37caL    # -1.9788081990813517E189
    .end array-data

    :array_12
    .array-data 8
        0x629ee44429afc95bL    # 1.1385154615337458E167
        -0x3aa171560895d05aL    # -1.4776594382747715E26
        -0xed9d788f3f8999aL
    .end array-data

    :array_13
    .array-data 8
        -0xedbc682a4fee063L    # -1.0288827373015277E237
        0x1612375207a13be5L
        0x6bda6a38c41449f7L    # 3.473652867086654E211
        0x1a015237e271a532L    # 2.038213875768127E-183
    .end array-data

    :array_14
    .array-data 8
        0x3f167ab3c98d13ffL    # 8.575174650811422E-5
        0x4bf3878129e7dcc7L    # 7.661718422793998E57
        0x4c515b2f24720b1bL    # 4.357862334023971E59
        0x14335e57f96014c7L    # 2.301334300230996E-211
    .end array-data

    :array_15
    .array-data 8
        0x7b2b52c6cbfb577dL    # 2.0315138673626304E285
        -0x6526e2724aff5343L    # -2.421048251145957E-179
        -0xa698293d5801948L
        0x1bfb56adf91f30eaL    # 6.908418848961103E-174
    .end array-data

    :array_16
    .array-data 8
        -0x44e1ab71d766a2dfL    # -6.272157827187627E-24
        -0x3fe8c3e6dc367dd9L    # -5.8086896507016155
        -0x54afda17679b97b2L    # -4.61426306475119E-100
    .end array-data
.end method

.method private static zza(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/TreeSet;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    new-array v3, v3, [J

    .line 45
    .line 46
    fill-array-data v3, :array_0

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    instance-of v3, v2, Landroid/os/Bundle;

    .line 58
    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    check-cast v2, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfjg;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :array_0
    .array-data 8
        -0x260b59c1c1a62267L    # -2.1840641121545146E125
        0x10365df69e58ab35L
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfjg;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjg;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjg;->zza:[Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjg;->zza:[Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjg;->zza:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjg;->zza:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    new-array v4, v4, [J

    .line 20
    .line 21
    fill-array-data v4, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    new-array v4, v3, [J

    .line 41
    .line 42
    fill-array-data v4, :array_1

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v1, v3, [J

    .line 61
    .line 62
    fill-array-data v1, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :array_0
    .array-data 8
        0xc6946c57c2343edL
        -0x1027c78a594b286cL    # -5.875442914274936E230
        0x7ace62d3ca8d43daL
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    :array_1
    .array-data 8
        -0x71c7b441fdaba7d4L
        0x6ddbb783551a5fe2L    # 1.5654552972738316E221
    .end array-data

    :array_2
    .array-data 8
        -0x16bb75b164a88601L    # -1.2283245414684791E199
        -0x621b0727ab57febdL    # -1.138081292265337E-164
    .end array-data
.end method
