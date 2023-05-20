.class public abstract Lanetwork/channel/aidl/ParcelableInputStream$Stub;
.super Landroid/os/Binder;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/aidl/ParcelableInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/ParcelableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/aidl/ParcelableInputStream$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "anetwork.channel.aidl.ParcelableInputStream"

.field static final TRANSACTION_available:I = 0x1

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_length:I = 0x7

.field static final TRANSACTION_read:I = 0x5

.field static final TRANSACTION_readByte:I = 0x3

.field static final TRANSACTION_readBytes:I = 0x4

.field static final TRANSACTION_skip:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    .line 15
    invoke-virtual {p0, p0, v0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lanetwork/channel/aidl/ParcelableInputStream;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "anetwork.channel.aidl.ParcelableInputStream"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 27
    instance-of v1, v0, Lanetwork/channel/aidl/ParcelableInputStream;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lanetwork/channel/aidl/ParcelableInputStream;

    return-object v0

    .line 30
    :cond_13
    new-instance v0, Lanetwork/channel/aidl/ParcelableInputStream$Stub$Proxy;

    invoke-direct {v0, p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "anetwork.channel.aidl.ParcelableInputStream"

    if-eq p1, v0, :cond_93

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_98

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 120
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->length()I

    move-result p1

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 110
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 113
    invoke-virtual {p0, p1}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->skip(I)J

    move-result-wide p1

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v1

    .line 93
    :pswitch_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gez p1, :cond_3b

    goto :goto_3d

    .line 100
    :cond_3b
    new-array v0, p1, [B

    .line 102
    :goto_3d
    invoke-virtual {p0, v0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->read([B)I

    move-result p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 72
    :pswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gez p1, :cond_55

    goto :goto_57

    .line 79
    :cond_55
    new-array v0, p1, [B

    .line 82
    :goto_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 85
    invoke-virtual {p0, v0, p1, p2}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->readBytes([BII)I

    move-result p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    .line 64
    :pswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->readByte()I

    move-result p1

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 57
    :pswitch_7b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->close()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 49
    :pswitch_85
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lanetwork/channel/aidl/ParcelableInputStream$Stub;->available()I

    move-result p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 44
    :cond_93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_85
        :pswitch_7b
        :pswitch_6d
        :pswitch_4b
        :pswitch_31
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method
