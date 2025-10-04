.class public Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Z

.field private zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzd:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xb

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
    const/4 v1, 0x1

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzc:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzj(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/util/ArrayList;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzb:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzk(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/util/ArrayList;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzd:Z

    .line 56
    .line 57
    invoke-static {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzl(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)V

    .line 58
    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzm(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Lcom/google/android/gms/common/zza;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzp(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzf:Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzq(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zza:Landroid/accounts/Account;

    .line 73
    .line 74
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzs(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Landroid/accounts/Account;)V

    .line 75
    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzt(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzu(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzr(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzv(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zze:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v0, v1}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzw(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzx(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzn(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v2}, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzo(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :array_0
    .array-data 8
        0x90d4c5b112106c5L
        0x108f5130ec4c5c32L    # 6.454990078203207E-229
        0x6105dd0293da2edcL    # 2.4013963513929346E159
        -0x3496f93a20b6968bL    # -1.917646671746023E55
        0x225d2b0e78e4dd98L
        -0x156e52d603b1784dL    # -2.2168250427694004E205
        -0x5f7d7145d8c6e70eL    # -4.429067735959492E-152
        0x2d00375e2c4ff85aL    # 6.219315445406325E-92
        -0x77a5caa8c15e7bcL    # -3.6579996908198253E272
        -0x100de39e949064e8L    # -1.757340009722566E231
        0x5f41dd085eb7b9e1L    # 7.309239391758808E150
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_1
    .array-data 8
        0x31eac85a31340043L    # 3.104446310021817E-68
        0x14b87aebb2897921L    # 7.446243797574414E-209
        0x4dae80de0539a316L    # 1.6061908344677924E66
        -0x303b4f27d1842030L    # -1.871742817096052E76
        -0x1b4c630b97d162a1L    # -1.2418347453631773E177
        -0x3823df1effe0a4d1L    # -1.495564037332634E38
        0x650fcd69a88d6e08L    # 6.443580411562159E178
        -0x174a3d9729d342caL    # -2.5414662641929272E196
        0x494b3317c4d11ddbL    # 1.213141870103537E45
    .end array-data
.end method

.method public setAllowableAccounts(Ljava/util/List;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;)",
            "Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzb:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-object p0
.end method

.method public setAllowableAccountsTypes(Ljava/util/List;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzc:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-object p0
.end method

.method public setAlwaysShowAccountPicker(Z)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzd:Z

    return-object p0
.end method

.method public setOptionsForAddingAccount(Landroid/os/Bundle;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zzf:Landroid/os/Bundle;

    return-object p0
.end method

.method public setSelectedAccount(Landroid/accounts/Account;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    .locals 0
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zza:Landroid/accounts/Account;

    return-object p0
.end method

.method public setTitleOverrideText(Ljava/lang/String;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method
