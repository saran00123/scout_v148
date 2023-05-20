.class public abstract Lanetwork/channel/aidl/RemoteNetwork$Stub;
.super Landroid/os/Binder;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/aidl/RemoteNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/RemoteNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/aidl/RemoteNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "anetwork.channel.aidl.RemoteNetwork"

.field static final TRANSACTION_asyncSend:I = 0x2

.field static final TRANSACTION_getConnection:I = 0x3

.field static final TRANSACTION_syncSend:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    .line 17
    invoke-virtual {p0, p0, v0}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lanetwork/channel/aidl/RemoteNetwork;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 29
    instance-of v1, v0, Lanetwork/channel/aidl/RemoteNetwork;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lanetwork/channel/aidl/RemoteNetwork;

    return-object v0

    .line 32
    :cond_13
    new-instance v0, Lanetwork/channel/aidl/RemoteNetwork$Stub$Proxy;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/RemoteNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "anetwork.channel.aidl.RemoteNetwork"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6a

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3e

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1a

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_16

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 44
    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 87
    :cond_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c

    .line 90
    sget-object p1, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanetwork/channel/aidl/ParcelableRequest;

    goto :goto_2d

    :cond_2c
    move-object p1, v1

    .line 95
    :goto_2d
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->getConnection(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/Connection;

    move-result-object p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3a

    .line 97
    invoke-interface {p1}, Lanetwork/channel/aidl/Connection;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_3a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 70
    :cond_3e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_50

    .line 73
    sget-object p1, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanetwork/channel/aidl/ParcelableRequest;

    goto :goto_51

    :cond_50
    move-object p1, v1

    .line 79
    :goto_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;->asInterface(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableNetworkListener;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p2}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->asyncSend(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_66

    .line 82
    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 49
    :cond_6a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7c

    .line 52
    sget-object p1, Lanetwork/channel/aidl/ParcelableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lanetwork/channel/aidl/ParcelableRequest;

    .line 57
    :cond_7c
    invoke-virtual {p0, v1}, Lanetwork/channel/aidl/RemoteNetwork$Stub;->syncSend(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8c

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p1, p3, v2}, Lanetwork/channel/aidl/NetworkResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_90

    :cond_8c
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_90
    return v2
.end method
