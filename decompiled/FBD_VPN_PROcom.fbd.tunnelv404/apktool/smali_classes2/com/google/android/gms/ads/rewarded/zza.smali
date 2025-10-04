.class final Lcom/google/android/gms/ads/rewarded/zza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x2763a43d2aa7e515L    # 6.085099198276086E-119

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
