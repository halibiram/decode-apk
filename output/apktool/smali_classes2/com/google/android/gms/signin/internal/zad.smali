.class public abstract Lcom/google/android/gms/signin/internal/zad;
.super Lcom/google/android/gms/internal/base/zab;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/signin/internal/zae;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :array_0
    .array-data 8
        -0x2189dcedcf3e43d4L
        0x7dead536659bf9cdL    # 3.5097219016138516E298
        0xf9f936f92b2b61dL
        -0x657090f64820ff79L    # -9.469099921689793E-181
        0x5331ddfde7ccea8fL    # 5.823366180764433E92
        0x13ec915cba63e53bL    # 1.060743044736614E-212
        -0x421cd231cdb666b2L    # -1.395450639968853E-10
        0x345254b26df91a23L    # 1.1681090026640324E-56
    .end array-data
.end method


# virtual methods
.method public final zaa(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const/4 p1, 0x0

    .line 5
    return p1

    .line 6
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/signin/internal/zag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/signin/internal/zag;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/signin/internal/zak;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/gms/signin/internal/zak;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/google/android/gms/signin/internal/zae;->zab(Lcom/google/android/gms/signin/internal/zak;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    .line 29
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 34
    .line 35
    sget-object p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_5
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 54
    .line 55
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_6
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 63
    .line 64
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 69
    .line 70
    sget-object p1, Lcom/google/android/gms/signin/internal/zaa;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    .line 72
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/base/zac;->zaa(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/google/android/gms/signin/internal/zaa;

    .line 77
    .line 78
    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    return p1

    .line 83
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
