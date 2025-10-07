.class public Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bypass:Z

.field public mDnsForward:Z

.field public mDnsResolver:[Ljava/lang/String;

.field public mEnableFilterApps:Z

.field public mExcludeIps:[Ljava/lang/String;

.field public mFilterApps:[Ljava/lang/String;

.field public mFilterBypassMode:Z

.field public mSocksServer:Ljava/lang/String;

.field public mTetheringSubnet:Z

.field public mUdpDnsRelay:Z

.field public mUdpResolver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpDnsRelay:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpResolver:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->bypass:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;ZZ[Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    .line 4
    iput-boolean p4, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpDnsRelay:Z

    .line 5
    iput-object p3, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpResolver:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    .line 9
    iput-boolean p8, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    .line 10
    iput-object p9, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    .line 11
    iput-boolean p11, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->bypass:Z

    .line 12
    iput-boolean p10, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mSocksServer:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsForward:Z

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpDnsRelay:Z

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mDnsResolver:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mUdpResolver:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mExcludeIps:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterBypassMode:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mFilterApps:[Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mEnableFilterApps:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->mTetheringSubnet:Z

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    iget-boolean p2, p0, Lapp/tunnel/ssh2/tunnel/vpn/TunnelVpnSettings;->bypass:Z

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
