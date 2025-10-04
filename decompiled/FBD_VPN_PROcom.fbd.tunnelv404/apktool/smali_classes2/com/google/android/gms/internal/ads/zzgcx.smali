.class final Lcom/google/android/gms/internal/ads/zzgcx;
.super Lcom/google/android/gms/internal/ads/zzgcz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdu;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgcz;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic zze(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdu;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgdu;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :array_0
    .array-data 8
        0xdbfe8e33321f65aL
        0x6c5267f6721793caL    # 6.196391012861528E213
        0x2fc39db4467bc5b8L    # 1.32349499234864E-78
        -0x53aa68bd4bc36791L    # -4.043257044154104E-95
        -0x50289b1c5c45b83L    # -2.738167949344368E284
        -0x1e64ed0c9719e418L    # -1.5225463989554433E162
        -0x676bf3c4b2b5e0cdL    # -2.812218326892728E-190
        0x71d9c51219c84236L    # 2.684897624616124E240
        -0x6fff734dff0dd89L    # -6.939327792856455E274
        0x64f7427117a86891L    # 2.3563431565435357E178
        -0x502f6f7e98333925L    # -2.2352124128052545E-78
        -0x1fc968e4f698575eL    # -3.0288581753017016E155
        0x5a57076ef692b547L    # 1.5588845882665765E127
        -0x1bef49f90443e811L    # -1.0332873089313245E174
    .end array-data
.end method

.method public final synthetic zzf(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzs(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
