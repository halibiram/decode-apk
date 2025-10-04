.class public Lcom/google/android/gms/common/internal/GetServiceRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GetServiceRequestCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x9
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field static final zza:[Lcom/google/android/gms/common/api/Scope;

.field static final zzb:[Lcom/google/android/gms/common/Feature;


# instance fields
.field final zzc:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field final zzd:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field final zze:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field zzf:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field zzg:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation
.end field

.field zzh:[Lcom/google/android/gms/common/api/Scope;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "GetServiceRequest.EMPTY_SCOPES"
        id = 0x6
    .end annotation
.end field

.field zzi:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "new android.os.Bundle()"
        id = 0x7
    .end annotation
.end field

.field zzj:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x8
    .end annotation
.end field

.field zzk:[Lcom/google/android/gms/common/Feature;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES"
        id = 0xa
    .end annotation
.end field

.field zzl:[Lcom/google/android/gms/common/Feature;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValueUnchecked = "GetServiceRequest.EMPTY_FEATURES"
        id = 0xb
    .end annotation
.end field

.field final zzm:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xc
    .end annotation
.end field

.field final zzn:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        defaultValue = "0"
        id = 0xd
    .end annotation
.end field

.field zzo:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isRequestingTelemetryConfiguration"
        id = 0xe
    .end annotation
.end field

.field private final zzp:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getAttributionTag"
        id = 0xf
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # [Lcom/google/android/gms/common/api/Scope;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # [Lcom/google/android/gms/common/Feature;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # [Lcom/google/android/gms/common/Feature;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p11    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p12    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p13    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-nez p9, :cond_2

    sget-object p9, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    :cond_2
    if-nez p10, :cond_3

    sget-object p10, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    :cond_3
    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc:I

    iput p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd:I

    iput p3, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zze:I

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    new-array p3, v0, [J

    fill-array-data p3, :array_1

    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_4
    iput-object p4, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_6

    if-eqz p5, :cond_5

    .line 4
    invoke-static {p5}, Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/AccountAccessor;->getAccountBinderSafe(Lcom/google/android/gms/common/internal/IAccountAccessor;)Landroid/accounts/Account;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    goto :goto_2

    :cond_6
    iput-object p5, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzk:[Lcom/google/android/gms/common/Feature;

    iput-object p10, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzl:[Lcom/google/android/gms/common/Feature;

    iput-boolean p11, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzm:Z

    iput p12, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzn:I

    iput-boolean p13, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzo:Z

    iput-object p14, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzp:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x5de10c6538877c42L    # 1.66315246504594E144
        0x7577c2cea6cf4896L    # 7.135434010426E257
        -0x740bc2d5d5a892a7L    # -4.416833806843793E-251
        0x39ad1ac73417b665L    # 7.174838363077415E-31
    .end array-data

    :array_1
    .array-data 8
        -0x348bdb416af55b15L    # -3.086987458176151E55
        -0x441328cd207a4ee5L    # -4.8857910739516944E-20
        -0x46514bd4ee853356L    # -7.5690666863054035E-31
        -0x58a97a57815ea06dL    # -3.488756446917705E-119
    .end array-data
.end method


# virtual methods
.method public getExtraArgs()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzn;->zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzp:Ljava/lang/String;

    return-object v0
.end method
