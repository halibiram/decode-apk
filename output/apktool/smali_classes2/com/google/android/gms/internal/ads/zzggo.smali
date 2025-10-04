.class public final Lcom/google/android/gms/internal/ads/zzggo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zza:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzggo;->zza:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggn;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzggo;->zza:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzggn;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzggn;->zza()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :array_0
    .array-data 8
        -0x6279876147b491f3L
        -0x10259ee9b4694e8aL    # -6.399102714533046E230
        0x193e409f2197e86cL    # 4.345531914577473E-187
        -0x3a025bcaffed9b29L    # -1.467772704957571E29
        -0x4ba071fa73ab684bL    # -2.0107860913200574E-56
    .end array-data
.end method
