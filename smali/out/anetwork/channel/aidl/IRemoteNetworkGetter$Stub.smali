.class public abstract Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;
.super Landroid/os/Binder;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/aidl/IRemoteNetworkGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/IRemoteNetworkGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "anetwork.channel.aidl.IRemoteNetworkGetter"

.field static final TRANSACTION_get:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "anetwork.channel.aidl.IRemoteNetworkGetter"

    .line 15
    invoke-virtual {p0, p0, v0}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lanetwork/channel/aidl/IRemoteNetworkGetter;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "anetwork.channel.aidl.IRemoteNetworkGetter"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub$Proxy;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "anetwork.channel.aidl.IRemoteNetworkGetter"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_f

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 47
    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;->get(I)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_28

    .line 52
    invoke-interface {p1}, Lanetwork/channel/aidl/RemoteNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1
.end method
