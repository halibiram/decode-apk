.class final Lcom/google/android/gms/internal/ads/zzfzj;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final zzd:Ljava/lang/Object;


# instance fields
.field transient zza:[I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient zzb:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient zzc:[Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zze:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zzf:I

.field private transient zzg:I

.field private transient zzh:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zzi:Ljava/util/Set;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient zzj:Ljava/util/Collection;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzp(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zzp(I)V

    return-void
.end method

.method private final zzA()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zza:[I

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    return-object v0
.end method

.method private final zzB()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzb:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method private final zzC()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzc:[Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    check-cast v0, [Ljava/lang/Object;

    .line 7
    .line 8
    return-object v0
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfzj;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfzj;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    return p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfzj;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzv()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfzj;Ljava/lang/Object;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zzw(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzfzj;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfzj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzfzj;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzfzj;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    aget-object p0, p0, p1

    .line 6
    .line 7
    return-object p0
.end method

.method public static bridge synthetic zzk()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzd:Ljava/lang/Object;

    return-object v0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzfzj;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/ads/zzfzj;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    aput-object p2, p0, p1

    .line 6
    .line 7
    return-void
.end method

.method public static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzfzj;)[I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzt(Lcom/google/android/gms/internal/ads/zzfzj;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zzu(Lcom/google/android/gms/internal/ads/zzfzj;)[Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final zzv()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private final zzw(Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzs;->zzb(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzv()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    and-int v4, v0, v2

    .line 23
    .line 24
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfzk;->zzc(Ljava/lang/Object;I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    not-int v4, v2

    .line 31
    and-int/2addr v0, v4

    .line 32
    :cond_1
    add-int/2addr v3, v1

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    aget v5, v5, v3

    .line 38
    .line 39
    and-int v6, v5, v4

    .line 40
    .line 41
    if-ne v6, v0, :cond_3

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    aget-object v6, v6, v3

    .line 48
    .line 49
    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return v3

    .line 57
    :cond_3
    :goto_0
    and-int v3, v5, v2

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    :cond_4
    return v1
.end method

.method private final zzx(IIII)I
    .locals 8

    .line 1
    add-int/lit8 v0, p2, -0x1

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfzk;->zzd(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    and-int/2addr p3, v0

    .line 10
    add-int/lit8 p4, p4, 0x1

    .line 11
    .line 12
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfzk;->zze(Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-gt v1, p1, :cond_2

    .line 26
    .line 27
    invoke-static {p3, v1}, Lcom/google/android/gms/internal/ads/zzfzk;->zzc(Ljava/lang/Object;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :goto_1
    if-eqz v2, :cond_1

    .line 32
    .line 33
    add-int/lit8 v3, v2, -0x1

    .line 34
    .line 35
    aget v4, p4, v3

    .line 36
    .line 37
    not-int v5, p1

    .line 38
    and-int/2addr v5, v4

    .line 39
    or-int/2addr v5, v1

    .line 40
    and-int v6, v5, v0

    .line 41
    .line 42
    invoke-static {p2, v6}, Lcom/google/android/gms/internal/ads/zzfzk;->zzc(Ljava/lang/Object;I)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-static {p2, v6, v2}, Lcom/google/android/gms/internal/ads/zzfzk;->zze(Ljava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    not-int v2, v0

    .line 50
    and-int v6, v7, v0

    .line 51
    .line 52
    and-int/2addr v2, v5

    .line 53
    or-int/2addr v2, v6

    .line 54
    aput v2, p4, v3

    .line 55
    .line 56
    and-int v2, v4, p1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzz(I)V

    .line 65
    .line 66
    .line 67
    return v0
.end method

.method private final zzy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzv()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    move-object v1, p1

    .line 28
    move v3, v0

    .line 29
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfzk;->zzb(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v1, -0x1

    .line 34
    if-eq p1, v1, :cond_1

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    aget-object v2, v2, p1

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzq(II)V

    .line 43
    .line 44
    .line 45
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 46
    .line 47
    add-int/2addr p1, v1

    .line 48
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzo()V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzj;->zzd:Ljava/lang/Object;

    .line 55
    .line 56
    return-object p1
.end method

.method private final zzz(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    rsub-int/lit8 p1, p1, 0x20

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    .line 8
    .line 9
    and-int/lit8 v0, v0, -0x20

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x1f

    .line 12
    .line 13
    or-int/2addr p1, v0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzr()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzo()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzl()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x3

    .line 24
    const v5, 0x3fffffff    # 1.9999999f

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgcu;->zzb(III)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 37
    .line 38
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 46
    .line 47
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 55
    .line 56
    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    instance-of v1, v0, [B

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    check-cast v0, [B

    .line 69
    .line 70
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    instance-of v1, v0, [S

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    check-cast v0, [S

    .line 79
    .line 80
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    check-cast v0, [I

    .line 85
    .line 86
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 94
    .line 95
    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 96
    .line 97
    .line 98
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 99
    .line 100
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzl()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zzw(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, -0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzl()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0

    .line 31
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzi:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzd;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfzd;-><init>(Lcom/google/android/gms/internal/ads/zzfzj;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzi:Ljava/util/Set;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzl()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zzw(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, -0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object p1, v0, p1

    .line 26
    .line 27
    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzh:Ljava/util/Set;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzg;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfzg;-><init>(Lcom/google/android/gms/internal/ads/zzfzj;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzh:Ljava/util/Set;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzr()Z

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzr()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    new-array v7, v3, [J

    .line 22
    .line 23
    fill-array-data v7, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfxe;->zzj(ZLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    .line 37
    .line 38
    add-int/lit8 v6, v5, 0x1

    .line 39
    .line 40
    const/4 v7, 0x2

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    int-to-double v8, v7

    .line 50
    double-to-int v8, v8

    .line 51
    if-le v6, v8, :cond_0

    .line 52
    .line 53
    add-int/2addr v7, v7

    .line 54
    if-gtz v7, :cond_0

    .line 55
    .line 56
    const/high16 v7, 0x40000000    # 2.0f

    .line 57
    .line 58
    :cond_0
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfzk;->zzd(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 67
    .line 68
    add-int/lit8 v3, v3, -0x1

    .line 69
    .line 70
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzfzj;->zzz(I)V

    .line 71
    .line 72
    .line 73
    new-array v3, v5, [I

    .line 74
    .line 75
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zza:[I

    .line 76
    .line 77
    new-array v3, v5, [Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzb:[Ljava/lang/Object;

    .line 80
    .line 81
    new-array v3, v5, [Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzc:[Ljava/lang/Object;

    .line 84
    .line 85
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzl()Ljava/util/Map;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    return-object v1

    .line 96
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 109
    .line 110
    add-int/lit8 v8, v7, 0x1

    .line 111
    .line 112
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfzs;->zzb(Ljava/lang/Object;)I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzv()I

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    and-int v11, v9, v10

    .line 121
    .line 122
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/zzfzk;->zzc(Ljava/lang/Object;I)I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-nez v12, :cond_4

    .line 132
    .line 133
    if-le v8, v10, :cond_3

    .line 134
    .line 135
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfzk;->zza(I)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/android/gms/internal/ads/zzfzj;->zzx(IIII)I

    .line 140
    .line 141
    .line 142
    move-result v10

    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 146
    .line 147
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    invoke-static {v3, v11, v8}, Lcom/google/android/gms/internal/ads/zzfzk;->zze(Ljava/lang/Object;II)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_4
    not-int v11, v10

    .line 155
    and-int v14, v9, v11

    .line 156
    .line 157
    const/4 v15, 0x0

    .line 158
    :goto_0
    add-int/lit8 v12, v12, -0x1

    .line 159
    .line 160
    aget v16, v3, v12

    .line 161
    .line 162
    and-int v13, v16, v11

    .line 163
    .line 164
    if-ne v13, v14, :cond_6

    .line 165
    .line 166
    aget-object v4, v5, v12

    .line 167
    .line 168
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-nez v4, :cond_5

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_5
    aget-object v1, v6, v12

    .line 176
    .line 177
    aput-object v2, v6, v12

    .line 178
    .line 179
    return-object v1

    .line 180
    :cond_6
    :goto_1
    and-int v4, v16, v10

    .line 181
    .line 182
    const/16 v16, 0x1

    .line 183
    .line 184
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    if-nez v4, :cond_b

    .line 187
    .line 188
    const/16 v4, 0x9

    .line 189
    .line 190
    if-lt v15, v4, :cond_8

    .line 191
    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzv()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    add-int/lit8 v3, v3, 0x1

    .line 197
    .line 198
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 199
    .line 200
    const/high16 v5, 0x3f800000    # 1.0f

    .line 201
    .line 202
    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 203
    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zze()I

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    :goto_2
    if-ltz v3, :cond_7

    .line 210
    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    aget-object v5, v5, v3

    .line 216
    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    aget-object v6, v6, v3

    .line 222
    .line 223
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfzj;->zzf(I)I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    goto :goto_2

    .line 231
    :cond_7
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 232
    .line 233
    const/4 v3, 0x0

    .line 234
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zza:[I

    .line 235
    .line 236
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzb:[Ljava/lang/Object;

    .line 237
    .line 238
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzc:[Ljava/lang/Object;

    .line 239
    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzo()V

    .line 241
    .line 242
    .line 243
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    return-object v1

    .line 248
    :cond_8
    if-le v8, v10, :cond_9

    .line 249
    .line 250
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfzk;->zza(I)I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/android/gms/internal/ads/zzfzj;->zzx(IIII)I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    goto :goto_3

    .line 259
    :cond_9
    and-int v4, v8, v10

    .line 260
    .line 261
    or-int/2addr v4, v13

    .line 262
    aput v4, v3, v12

    .line 263
    .line 264
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    array-length v3, v3

    .line 269
    if-le v8, v3, :cond_a

    .line 270
    .line 271
    const/4 v12, 0x1

    .line 272
    ushr-int/lit8 v4, v3, 0x1

    .line 273
    .line 274
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    add-int/2addr v4, v3

    .line 279
    or-int/2addr v4, v12

    .line 280
    const v5, 0x3fffffff    # 1.9999999f

    .line 281
    .line 282
    .line 283
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-eq v4, v3, :cond_a

    .line 288
    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zza:[I

    .line 298
    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzb:[Ljava/lang/Object;

    .line 308
    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzc:[Ljava/lang/Object;

    .line 318
    .line 319
    :cond_a
    not-int v3, v10

    .line 320
    and-int/2addr v3, v9

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    aput v3, v4, v7

    .line 326
    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    aput-object v1, v3, v7

    .line 332
    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    aput-object v2, v1, v7

    .line 338
    .line 339
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 340
    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzo()V

    .line 342
    .line 343
    .line 344
    const/4 v13, 0x0

    .line 345
    return-object v13

    .line 346
    :cond_b
    move v12, v4

    .line 347
    const/4 v4, 0x1

    .line 348
    goto/16 :goto_0

    .line 349
    .line 350
    nop

    .line 351
    :array_0
    .array-data 8
        0x3fc58aac3a351ccL
        -0x4d1a8cd04fd74ad3L    # -1.62943535445906E-63
        0x4d1066e846f1138cL    # 1.686845984221846E63
        -0x65c2e46233a97b38L
    .end array-data
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzl()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzj;->zzd:Ljava/lang/Object;

    .line 17
    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :cond_1
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzl()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    .line 13
    .line 14
    :goto_0
    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzj:Ljava/util/Collection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzi;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfzi;-><init>(Lcom/google/android/gms/internal/ads/zzfzj;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzj:Ljava/util/Collection;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final zze()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzf(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzg:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzl()Ljava/util/Map;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/util/Map;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public final zzo()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    return-void
.end method

.method public final zzp(I)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const v0, 0x3fffffff    # 1.9999999f

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgcu;->zzb(III)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zzf:I

    .line 12
    .line 13
    return-void
.end method

.method public final zzq(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzA()[I

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzB()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzC()[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzj;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    add-int/lit8 v5, v4, -0x1

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    if-ge p1, v5, :cond_2

    .line 27
    .line 28
    add-int/lit8 v8, p1, 0x1

    .line 29
    .line 30
    aget-object v9, v2, v5

    .line 31
    .line 32
    aput-object v9, v2, p1

    .line 33
    .line 34
    aget-object v10, v3, v5

    .line 35
    .line 36
    aput-object v10, v3, p1

    .line 37
    .line 38
    aput-object v7, v2, v5

    .line 39
    .line 40
    aput-object v7, v3, v5

    .line 41
    .line 42
    aget v2, v1, v5

    .line 43
    .line 44
    aput v2, v1, p1

    .line 45
    .line 46
    aput v6, v1, v5

    .line 47
    .line 48
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfzs;->zzb(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    and-int/2addr p1, p2

    .line 53
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfzk;->zzc(Ljava/lang/Object;I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eq v2, v4, :cond_1

    .line 58
    .line 59
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 60
    .line 61
    aget p1, v1, v2

    .line 62
    .line 63
    and-int v0, p1, p2

    .line 64
    .line 65
    if-eq v0, v4, :cond_0

    .line 66
    .line 67
    move v2, v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    not-int v0, p2

    .line 70
    and-int/2addr p1, v0

    .line 71
    and-int/2addr p2, v8

    .line 72
    or-int/2addr p1, p2

    .line 73
    aput p1, v1, v2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    invoke-static {v0, p1, v8}, Lcom/google/android/gms/internal/ads/zzfzk;->zze(Ljava/lang/Object;II)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    aput-object v7, v2, p1

    .line 81
    .line 82
    aput-object v7, v3, p1

    .line 83
    .line 84
    aput v6, v1, p1

    .line 85
    .line 86
    return-void
.end method

.method public final zzr()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzj;->zze:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
